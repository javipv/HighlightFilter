" Script Name: highlightFilter.vim
" Description: Highlight text patterns in different colors. 
"   Allows to save, reload and modify the highlighting configuration.
"   Allows to filter by color the lines and show then on a new split/tab.
"
" Copyright:   (C) 2017-2019 Javier Puigdevall Garcia
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:  Javier Garcia Puigdevall <javierpuigdevall@gmail.com>
" Contributors:
"
" Dependencies:
"
" NOTES:

" INSPIRED BY:
"   https://github.com/vim-scripts/Mark--Karkat
"   http://github.com/guns/highlight.vim
"
" Version:      1.0.0
" Changes:


"- functions -------------------------------------------------------------------

function! s:Error(mssg)
    echohl ErrorMsg | echom s:pluginName.": ".a:mssg | echohl None
endfunction


function! s:Warn(mssg)
    echohl WarningMsg | echo a:mssg | echohl None
endfunction


" Debug function. Log message
function! s:Verbose(level,func,mssg)
    if s:verbose >= a:level
        echom s:plugin_name." : ".a:func." : ".a:mssg
    endif
endfunction


" Debug function. Log message and wait user key
function! s:VerboseStop(level,func,mssg)
    if s:verbose >= a:level
        call input(s:plugin_name." : ".a:func." : ".a:mssg." (press key)")
    endif
endfunction


func! highlightFilter#Verbose(level)
    let s:verbose = a:level
endfun


" Init
fun! s:Initialize()
    if exists("s:initialized")
        return
    endif

    let s:verbose = 0
    "let s:verbose = 4
    let s:PredefinedTypesList = []
    let s:colorhelpOmittColors   = "bold underline background"
    let s:idHelpColorIdHelpOmitt = "! _ #"

    if s:ReloadColorConfig() != 0
        call s:Error("Color definition error")
        return
    endif

    if g:HighlightFilter_AwkFilter != 0
        if !executable('awk')
            echo "Disabling awk based filter tools."
            echo "Region filter not allowed."
            call s:Error("awk not found.")
            let g:HighlightFilter_AwkFilter = 0
        endif
    endif

    if g:HighlightFilter_AgGrepFilter != 0
        if !executable('ag') && !executable('grep')
            echo "Disabling ag and grep based filter tools."
            call s:Error("ag and grep not found.")
            let g:HighlightFilter_AgGrepFilter = 0
        endif
    endif

    let s:initialized = 1
endfun


fun! s:ReloadColorConfig()
    " Reload custorm highlights
    let l:file = s:plugin_path."/../colors/highlightFilter.vim"
    if empty(glob(l:file))
        call s:Error("Config file not found ".l:file)
        return 1
    endif
    silent exec("source ".l:file)

    if !exists("g:HighlightFilter_ColorDefinitionList")
        call s:Error("Config not found g:HighlightFilter_ColorDefinitionList")
        return 1
    endif
    let s:ColorDefinitionList = g:HighlightFilter_ColorDefinitionList

    if !exists("g:HighlightFilter_BaseColors")
        call s:Error("Config not found g:HighlightFilter_BaseColors")
        return 1
    endif
    let s:baseColors = g:HighlightFilter_BaseColors

    if !exists("g:HighlightFilter_ColorIds")
        call s:Error("Config not found g:HighlightFilter_ColorIds")
        return 1
    endif
    let s:baseColorIds = g:HighlightFilter_ColorIds
    return 0
endfun


" Reload highlight predefined types from config files 
function! s:ReloadTypeConfig()
    let w:HighlightFilter_TypesList = []
    let file  = expand('%:h')."/"
    let file .= g:HighlightFilter_AutoSaveSourcePrefix
    let file .= expand('%:t')
    let file .= g:HighlightFilter_AutoSaveSourceSufix

    call s:Verbose(1,"ReloadTypeConfig","Check default: ".l:file)

    if !empty(glob(l:file))
        call s:Verbose(1,"ReloadTypeConfig","source default: ".l:file)
        "silent! exec("source ".l:file)
        exec("source ".l:file)
    endif

    let s:PredefinedTypesList   = []
    if exists("g:HighlightFilter_SourceFiles")
        let list = split(g:HighlightFilter_SourceFiles,' ')
        for i in l:list
            call s:Verbose(1,"ReloadTypeConfig","Check: ".l:i)
            if !empty(glob(l:i))
                call s:Verbose(1,"ReloadTypeConfig","source: ".l:i)
                "silent! exec("source ".l:i)
                exec("source ".l:i)
            endif
        endfor
    endif
endfunction


" Clear all saved highlight settings
function! s:ListClear()
    if exists("w:ColoredPatternsList")
        let n = len(w:ColoredPatternsList) -1
        if l:n > 0
            call remove(w:ColoredPatternsList, 0, l:n)
        endif
    endif
    if exists('w:LastConfigType')
        unlet w:LastConfigType
    endif
endfunction


" Clear syntax highlight, and remove all saved highlight settings
function! s:SyntaxClear()
    let l:ft = &ft
    syntax clear
    if l:ft != ""
        " reload file syntax
        silent exec("set ft=".l:ft)
    endif
endfunction


" Reload the syntax highliting   
function! s:SyntaxReload()
    call s:SyntaxClear()

    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return
    endif

    " Reload again all highlights
    for coloredPatterns in w:ColoredPatternsList
        silent call s:HighlightFilter_ColorReload(l:coloredPatterns[0],l:coloredPatterns[1],l:coloredPatterns[2])
    endfor
endfunction


" Check color available on color list
" Return: 0 on success, 1 elsewise
function! s:ColorCheck(color)
    let color = substitute(a:color, '\*', '', 'g')
    let color = substitute(l:color, '&', '', 'g')
    let found = 0
    for colorDefinitions in s:ColorDefinitionList
        call s:Verbose(3,"ColorCheck",colorDefinitions[0]." ".toupper(l:color))
        if colorDefinitions[0] == toupper(l:color)
            let found = 1
        endif
    endfor
    if l:found == 0
        call s:Verbose(2,"ColorCheck","Not found: ".toupper(l:color))
        return 1
    endif
    call s:Verbose(2,"ColorCheck","Found: ".toupper(l:color))
    return 0
endfunction


" Highlight a pattern with the selected color.
" Return: 0 on success, error number elsewise
function! s:HighlightString(color,pattern,opt)
    if a:color == ""
        call confirm("Remove all color highlighting")
        echo "Highlight clear"
        call s:SyntaxClear()
        call s:ListClear()
        return
    endif

    " Check color available on color list
    let found = 0
    for colorDefinitions in s:ColorDefinitionList
        if colorDefinitions[0] == toupper(a:color)
            let found = 1
        endif
    endfor
    if l:found == 0
        call s:Error("Color:".a:color." not found")
        return 1
    endif

    " Check not duplicated highlight
    if exists("w:ColoredPatternsList")
        let newCfgList = [ a:color, a:pattern, a:opt ]
        for cfgList in w:ColoredPatternsList
            if l:cfgList == l:newCfgList
                " Duplicated configuration. Already in use.
                call s:Warn("Duplicated highlight")
                return 0
            endif
        endfor
    endif

    let pattern = a:pattern
    let pattern = substitute(l:pattern, '/', '\\/', 'g')

    if a:opt =~# "c"
        " Force case insensitive
        let case = "\\c"
    elseif a:opt =~# "C"
        " Force case sensitive
        let case = "\\C"
    else
        let case = ""
    endif

    if a:opt =~# "l"
        let l:line0 = "^.*"
        let l:line1 = ".*"
    else
        let l:line0 = ""
        let l:line1 = ""
    endif

    " Highlight command don't allow using characters: !"·$%&/()=?¿^*{}[]`+-_.,;:¡
    " Transform characters
    "    Bold modifier      : ! change to B
    "    Background color   : # change to H
    "    Underline modifier : _ change to U
    let l:color = a:color
    let l:color = substitute(l:color,'!','B','')
    let l:color = substitute(l:color,'#','H','')
    let l:color = substitute(l:color,'_','U','')

    if l:color == "n"
        let l:contains="BOTTOM"
    else
        let l:contains="TOP"
    endif

    if a:opt =~# "b"
        " Highlight a block with init and end pattern, optional skip " pattern.
        let l:skip = ""
        let list = split(l:pattern,">>")
        if len(l:list) < 2
            call s:Error("Block error, not enough arguments ".len(l:list))
            return
        endif
        let n = 0
        let init = " start=/".l:case.l:line0.l:list[l:n].l:line1."/" | let n += 1
        if len(l:list) > 2
            let skip = " skip=/".l:case.l:list[l:n]."/"
            let n += 1
        endif
        let end  = " end=/".l:case.l:line0.l:list[l:n].l:line1."/"
        let cmd  = "syn region HighlightFilter_Color".toupper(l:color).l:init.l:skip.l:end." contains=".l:contains
    else
        " Highlight pattern only
        let pattern = "/".l:case.l:line0.l:pattern.l:line1."/"
        let cmd = "syn match HighlightFilter_Color".toupper(l:color)." ".l:pattern." contains=".l:contains
    endif

    call s:Verbose(1,"HighlightString",l:cmd)
    silent exec(l:cmd)

    " Save this config
    if !exists("w:ColoredPatternsList")
        let w:ColoredPatternsList = []
    endif
    call add(w:ColoredPatternsList, [ a:color, a:pattern, a:opt ])
    return 0
endfunction


" Apply again current color highlighting configuration
function! s:HighlightFilter_ColorReload(color,pattern,opt)
    if a:color == ""
        call confirm("Remove all color highlighting")
        echo "Highlight clear"
        call s:SyntaxClear()
        call s:ListClear()
        return
    endif

    if a:opt =~# "c"
        " Force case insensitive
        let case = "\\\c"
    elseif a:opt =~# "C"
        " Force case sensitive
        let case = "\\\C"
    else
        let case = ""
    endif

    if a:opt =~# "l"
        " Highlight all line
        let line0 = "^.*"
        let line1 = ".*"
    else
        " Highlight pattern only
        let line0 = ""
        let line1 = ""
    endif

    let l:color = a:color
    let l:color = substitute(l:color,'!','B','')
    let l:color = substitute(l:color,'#','H','')
    let l:color = substitute(l:color,'_','U','')

    let l:cmd = ""

    if a:opt =~# "b"
        " Highlight a block with init and end pattern, optional skip " pattern.
        let l:skip = ""
        let list = split(a:pattern,">>")
        if len(l:list) < 2
            call s:Error("Block error, not enough arguments ".len(l:list))
            return
        endif
        let n = 0
        let init = " start=/".l:case.l:line0.l:list[l:n].l:line1."/" | let n += 1
        if len(l:list) > 2
            let skip = " skip=/".l:case.l:list[l:n]."/"
            let n += 1
        endif
        let end  = " end=/".l:case.l:line0.l:list[l:n].l:line1."/"
        let cmd  = "syn region HighlightFilter_Color".toupper(l:color).l:init.l:skip.l:end." contains=TOP"
    else
        " Highlight pattern only
        let l:pattern = "/".l:case.l:line0.a:pattern.l:line1."/"
        let cmd = "syn match HighlightFilter_Color".toupper(l:color)." ".l:pattern." contains=TOP"
    endif

    "echo l:cmd
    call s:Verbose(1,"ColorReload",l:cmd)
    silent exec(l:cmd)
endfunction


" Remove config with selected name 
function! s:RemoveConfig(name,file)
    call s:Verbose(1,"RemoveConfig","file: ".a:file." config:".a:name)

    silent! exec("bdelete ".a:file)

    " Save tab position
    let tabn = tabpagenr()
    silent exec("tabedit ".a:file)

    " Remove any settings with the same name
    normal gg

    if search(a:name) != 0
        echo " "
        call s:Warn("Config already exists (file:".a:file.")")
        let l:confirm = confirm("Replace config ?","&yes\n&no",1)

        if l:confirm != 1
            " Restore last tab position
            silent! exec("normal ".l:tabn."gt")
            return 1
        endif
    endif

    if search(a:name) != 0
        silent! exec("normal gg/let.*w:".a:name."V/call.*".a:name."D")
    endif
    if a:name =~ "Config" && search("Config") != 0
        silent! exec("normal gg/let.*w:ConfigV/call.*ConfigD")
    endif
    silent! tabclose

    " Restore last tab position
    silent! exec("normal ".l:tabn."gt")
    return 0
endfunction


" Remove config with selected name on all config files
function! s:RemoveConfigAll(name)

    "let file  = expand('%:h')."/"
    let file  = g:HighlightFilter_AutoSaveSourcePrefix
    let file .= expand('%:t')
    let file .= g:HighlightFilter_AutoSaveSourceSufix

    let res = s:RemoveConfig(a:name,file)
    if l:res != 0
        return 1
    endif

    if exists("g:HighlightFilter_SourceFiles")
        let list = split(g:HighlightFilter_SourceFiles,' ')
        for i in l:list
            if !empty(glob(l:i))
                let res = s:RemoveConfig(a:name,l:i)
                if l:res != 0
                    return 1
                endif
            endif
        endfor
    endif

    return 0
endfunction


" 
function! s:SaveColorHiglighting(file,name)
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return
    endif

    call s:Verbose(1,"SaveColorHiglighting","file: ".a:file." config:".a:name)

    let ColoredPatternsList = w:ColoredPatternsList

    " Prevent having a duplicated config, remove from all config files.
    let res = s:RemoveConfigAll(a:name)
    if l:res != 0 | return 1 | endif

    silent! exec("bdelete ".a:file)

    " Save tab position
    let tabn = tabpagenr()
    silent exec("tabedit ".a:file)

    " Remove any settings with the same name
    "normal gg
    "if search(a:name) != 0
        "silent! exec("normal gg/let.*w:".a:name."V/call.*".a:name."D")
    "endif
    "if a:name =~ "Config" && search("Config") != 0
        "silent! exec("normal gg/let.*w:ConfigV/call.*ConfigD")
    "endif

    " Save new settings
    normal G
    let @a = "let w:".a:name." = ["
    put a
    for coloredPattern in l:ColoredPatternsList
        let color   = l:coloredPattern[0]
        let pattern = l:coloredPattern[1]
        let options = l:coloredPattern[2]
        let pattern = substitute(l:pattern,'\\','\\\','g')
        let pattern = substitute(l:pattern,'\','\\','g')
        let pattern = substitute(l:pattern,'/','\\/','g')
        let pattern = substitute(l:pattern,'"','\\"','g')
        let @a = "            \\[ \"".l:color."\", \"".l:pattern."\", \"".l:options."\" ],"
        put a
    endfor
    let @a = "            \\]"
    put a

    let @a = "call add(w:HighlightFilter_TypesList, \"".a:name."\")" | put a
    silent exec("g/^$/d")
    silent w!
    silent! tabclose

    " Restore last tab position
    silent! exec("normal ".l:tabn."gt")
    return 0
endfunction


" On any configuration change. Save current highlight configuration
function! s:AutoSaveColorHiglighting()
    if g:HighlightFilter_AutoSave != 1 | return 0 | endif

    if !filereadable(expand('%'))
        return 1
    endif

    if exists("w:AutoSave")
        if w:AutoSave != 1 | return | endif
    endif

    let fileCfg  = expand('%:h')."/"
    let fileCfg .= g:HighlightFilter_AutoSaveSourcePrefix
    let fileCfg .= expand('%:t')
    let fileCfg .= g:HighlightFilter_AutoSaveSourceSufix

    let list = split(g:HighlightFilter_AutoSaveExcludeExt,' ')
    for i in l:list
        if expand('%:e') == l:i | return | endif
    endfor

    let list = split(g:HighlightFilter_AutoSaveExtensions,' ')
    for i in l:list
        if expand('%:e') == l:i | let w:AutoSaveConfirmed = 1 | endif
    endfor

    if g:HighlightFilter_AutoSaveConfirm == 1 && !exists("w:AutoSaveConfirmed")
        let w:AutoSave = confirm("Auto save changes?","&yes\n&no",1)
        let w:AutoSaveConfirmed = 1
        let l:AutoSave = w:AutoSave

        let tabn = tabpagenr()
        silent exec("tabedit ".l:fileCfg)
        normal G
        let @a = "let w:Autosave = ".l:AutoSave | put a
        let @a = "let w:AutoSaveConfirmed = 1" | put a
        silent w!
        silent! tabclose
        silent! exec("normal ".l:tabn."gt")
    endif

    let date = system("date +%y%m%d_%H%M")
    let date = substitute(l:date, '\n\+$', '', '')

    let name = "Config_".l:date
    let w:LastConfigType = l:name
    call s:SaveColorHiglighting(l:fileCfg,l:name)

    if exists("g:HighlightFilter_AutosaveFiles")
        let n = 1
        let list = split(g:HighlightFilter_AutosaveFiles,' ')
        for file in l:list
            let name = "Config".l:n."_".l:date
            call s:SaveColorHiglighting(l:file,l:name)
            let n += 1
        endfor
    endif
endfunction


" Get the patterns related to the requested colors.
" If the requested colors are empty, get all patterns.
" Return: array with all patterns separated with word 'separator'
function! s:GetColorPatterns(colors,separator,confirmation)
    let confirmation = a:confirmation

    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return 
    endif

    let showColorList = []
    if  a:colors != ""
        let showColorList = split(toupper(a:colors), ' ')
    endif

    let search = ""
        for coloredPatterns in w:ColoredPatternsList
            let color = l:coloredPatterns[0]
            let tmp  = l:coloredPatterns[1]
            let opt  = l:coloredPatterns[2]

            if l:opt =~# "b"
                " Region pattern
                continue
            endif

            if a:colors != ""
                let showFlag = 0
                for showColor in l:showColorList 
                    if l:color == l:showColor
                        let showFlag = 1
                        break
                    endif
                endfor
                if l:showFlag == 0 | continue | endif
            endif

            if l:confirmation == "confirm"
                redraw
                let l:res = confirm("Add ".l:tmp,"&yes\n&no\n&all",1)
                if l:res == 3
                    let l:confirmation = "noconfirm"
                elseif l:res == 2
                    let n += 1
                    continue
                endif
            endif

            if l:tmp != ""
                if l:search != ""
                    let search .= a:separator
                endif
                let search .= l:tmp
            endif
        endfor
    return l:search
endfunction


" Get the patterns related to regions with requested colors.
" Return: list with all region patterns init>>end
function! s:GetColorRegionPatterns(colors)
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return 
    endif

    let showColorList = []
    if  a:colors != ""
        let showColorList = split(toupper(a:colors), ' ')
    endif

    let searchList = []

    for coloredPatterns in w:ColoredPatternsList
        let color   = l:coloredPatterns[0]
        let pattern = l:coloredPatterns[1]
        let opt     = l:coloredPatterns[2]

        if l:opt !~# "b"
            continue
        endif

        if a:colors != ""
            let showFlag = 0
            for showColor in l:showColorList 
                if l:color == l:showColor
                    let showFlag = 1
                    break
                endif
            endfor
            if l:showFlag == 0 | continue | endif
        endif
        call add(l:searchList, l:pattern)
    endfor

    return l:searchList
endfunction


" Show menu to select predefined hightlight settings
function! s:TypeMenuSelect()
    "echo "Saved highlight configs types:"

    call s:ReloadTypeConfig()

    if !exists("w:HighlightFilter_TypesList") || len(w:HighlightFilter_TypesList) <= 0
        call s:Warn("Highlight predifined configuration not found.")
        return -1
    endif

    let n = 1
    for type in w:HighlightFilter_TypesList
        echo printf("%' '3d)  %s",l:n,l:type)
        let n += 1
    endfor

    "echom " "
    let n = input("Select type: ")
    if l:n == "" | return -1 | endif
    return l:n
endfunction


" Clear all highlights for the selected color
function! highlightFilter#RmColor(color)
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return ""
    endif

    if a:color == ""
        call confirm("Remove all color highlighting")
        echo "Highlight clear"
        call s:SyntaxClear()
        call s:ListClear()
        return
    endif

    let color = toupper(a:color)
    let cmd = "syn clear HighlightFilter_Color".l:color
    silent exec(l:cmd)

    let n = 0
    for coloredPatterns in w:ColoredPatternsList
        if l:coloredPatterns[0] ==# l:color
            " Remove from the highlighted colors/patterns list
            echo "Remove highlight pattern ".l:coloredPatterns[1]." color ".l:coloredPatterns[0]
            call remove(w:ColoredPatternsList, l:n)
        endif
        let n += 1
    endfor

    call s:AutoSaveColorHiglighting()
    call s:AutoSyncFiltWindowData()
endfunction


" Choose config file
function! s:ChooseFileCfgMenu()

    "let fileDflt  = expand('%:h')."/"
    let fileDflt  = g:HighlightFilter_AutoSaveSourcePrefix
    let fileDflt .= expand('%:t')
    let fileDflt .= g:HighlightFilter_AutoSaveSourceSufix

    let file = l:fileDflt

    if exists("g:HighlightFilter_SourceFiles")
        echo " "
        echo "Config files:"
        echo "  0) ".l:fileDflt

        let n = 1
        let list = split(g:HighlightFilter_SourceFiles,' ')
        for i in l:list
            if !empty(glob(l:i))
                echo "  ".l:n.") ".l:i
                let n+=1
            endif
        endfor

        let numb = input("Choose file number: ")
        echo ""

        if l:numb == 0
            let file = l:fileDflt
        else
            let n = 1
            let list = split(g:HighlightFilter_SourceFiles,' ')
            for i in l:list
                if !empty(glob(l:i))
                    if l:n == l:numb
                        let file = l:i
                        break
                    endif
                    let n+=1
                endif
            endfor
        endif
    endif
    echo "Config file: ".l:file
    return l:file
endfunction


" Dump current highlight settings into config file
" Add a new type, this is a new function.
function! highlightFilter#SaveCurrentHighlightCfg(name)
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return ""
    endif

    if a:name == ""
        call highlightFilter#ShowCurrentHighlightCfg()
        echo "  "
        let name = input("Config name: ")

        if l:name == ""
            return
        endif
    else
        let name = a:name
    endif

    echo ""

    let file = s:ChooseFileCfgMenu()

    "let file  = expand('%:h')."/"
    "let file .= g:HighlightFilter_AutoSaveSourcePrefix
    "let file .= expand('%:t')
    "let file .= g:HighlightFilter_AutoSaveSourceSufix

    "if exists("g:HighlightFilter_SourceFiles")
        "let list = split(g:HighlightFilter_SourceFiles,' ')
        "let n = 0
        "echo "Choose config file:"
        "echo l:n.") ".l:file
        "for i in l:list
            "if !empty(glob(l:i))
                "let n+=1
                "echo l:n.") ".l:i
            "endif
        "endfor
        "call input("File number: ")
        "if 
            "let file = l:i
        "else
            "for i in l:list
                "if !empty(glob(l:i))
                    "let n+=1
                    "if l:n = l:fileNumb
                        "let file = l:i
                        "break
                    "endif
                "endif
            "endfor
        "endif
    "endif

    let res = s:SaveColorHiglighting(l:file,l:name)
    if l:res == 0
        call s:AutoSaveColorHiglighting()
        echo "Config ".l:name." saved"
    endif
endfunction


" Show the color configuration 
function! s:ShowHighlightCfg(cfgList)
    echo "Pos) Color Opt  Highlight_pattern"
    echo "---------------------------------"
    let n = 0
    for cfgList in a:cfgList
        let colorId = l:cfgList[0]
        let pattern = l:cfgList[1]
        let flags   = l:cfgList[2]

        if l:flags != ""
            let l:flags = "+".l:flags
        endif

        " Highlight command don't allow using characters: !"·$%&/()=?¿^*{}[]`+-_.,;:¡
        " Transform characters
        "    Bold modifier      : ! change to B
        "    Background color   : # change to H
        "    Underline modifier : _ change to U
        let l:colorId = substitute(l:colorId,'!','B','')
        let l:colorId = substitute(l:colorId,'#','H','')
        let l:colorId = substitute(l:colorId,'_','U','')

        if l:flags =~ "l"
            echo printf("%3d) ", l:n)
            exec("echohl HighlightFilter_Color".toupper(l:colorId))
            echon printf("%' '-5s %' '-4s \"%s\"", l:colorId, l:flags, l:pattern)
        else
            echo printf("%3d) %' '-5S %' '-4S ", l:n, l:colorId, l:flags)
            exec("echohl HighlightFilter_Color".toupper(l:colorId))
            echon printf("\"%s\"", l:pattern)
        endif

        echohl None
        let n += 1
    endfor
    echo ""
    echo "*Opt. +C : case sensitive, +c : case insensitive, +l : highlight all, +b : highlight region"
endfunction


" Show current hightlight settings
function! highlightFilter#ShowCurrentHighlightCfg()
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return 1
    endif
    call s:ShowHighlightCfg(w:ColoredPatternsList)
    call input("(press any key)")
    return 0
endfunction


" Remove pattern hightlight
function! highlightFilter#RmPattern()
    if highlightFilter#ShowCurrentHighlightCfg() != 0
        return 1
    endif

    let n = input("Remove patterns:")
    if l:n == "" | return 1 | endif

    " Remove from the highlighted colors/patterns list
    for i in split(l:n,' ')
        call remove(w:ColoredPatternsList, l:i, l:i)
    endfor

    call s:SyntaxReload()

    call s:AutoSaveColorHiglighting()
    call s:AutoSyncFiltWindowData()
    redraw
    "call highlightFilter#RmPattern()
endfunction


" Remove last pattern hightlight
function! highlightFilter#RmLastPattern()
    if !exists("w:ColoredPatternsList") || len(w:ColoredPatternsList) <= 0
        call s:Warn("Color highglight not found, empty.")
        return ""
    endif

    let n = len(w:ColoredPatternsList)-1

    let color   = w:ColoredPatternsList[l:n][0]
    let pattern = w:ColoredPatternsList[l:n][1]

    "let msg = "Remove highlight color ".l:color." pattern ".l:pattern." (pos:".l:n.")"
    "if confirm (l:msg, "&yes\n&no", 2) == 2
        "return
    "endif

    " Remove from the highlighted colors/patterns list
    "call remove(w:ColoredPatternsList, l:n, l:n)
    call remove(w:ColoredPatternsList, l:n)

    silent call s:SyntaxReload()
    silent call s:AutoSaveColorHiglighting()
    silent call s:AutoSyncFiltWindowData()
endfunction


" Get color Ids for wildmenu
" Return: list with all color IDs matching ArgLead
function! highlightFilter#ColorsIDWildmenu(ArgLead, CmdLine, CursorPos)
    let resultList = []
    if exists("s:ColorDefinitionList")
        for tmpList in s:ColorDefinitionList
            if l:tmpList[0] =~ a:ArgLead
                call add(l:resultList, tolower(l:tmpList[0]))
            endif
        endfor
    endif
    return l:resultList
endfunction


" Get current patterns for wildmenu
" Return: list with all patterns matching ArgLead
function! highlightFilter#UsedPatternsWildmenu(ArgLead, CmdLine, CursorPos)
    let resultList = []
    if exists("s:ColorDefinitionList")
        for tmpList in w:ColoredPatternsList
            if l:tmpList[1] =~ a:ArgLead
                call add(l:resultList, l:tmpList[1])
            endif
        endfor
    endif
    return l:resultList
endfunction


" Get current colors for wildmenu
" Return: list with all patterns matching ArgLead
function! highlightFilter#UsedColorsWildmenu(ArgLead, CmdLine, CursorPos)
    let resultList = []
    if exists("s:ColorDefinitionList")
        for tmpList in w:ColoredPatternsList
            if l:tmpList[0] =~ a:ArgLead
                call add(l:resultList, l:tmpList[0])
            endif
        endfor
    endif
    return l:resultList
endfunction


" Get wildmenu options for Hit/Hitl commands
" Return: list with all config type names available.
function! highlightFilter#ConfigTypesWildmenu(ArgLead, CmdLine, CursorPos)
    silent call s:ReloadTypeConfig()

    let typesList = []
    for type in w:HighlightFilter_TypesList
        if l:type =~ a:ArgLead
            call add(l:typesList, l:type)
        endif
    endfor
    return l:typesList
endfunction


" Highlight match block with selected color
function! highlightFilter#BlockColorize(...)
endfunction


" Highlight match pattern with selected color
function! highlightFilter#PatternColorize(...)
    if a:0 < 1
        call s:Error("Args: pattern colorId")
        return
    endif

    " Last argument is color ID
    let color = {"a:".a:0}
    call s:Verbose(1,"PatternColorize","color:".l:color)

    if a:0 < 2 || ( a:0 >= 2 && s:ColorCheck(l:color) != 0 )
        " Show color help menu
        call highlightFilter#ColorIdHelp("")
        " Choose color
        let color = input("select color id: ")
        if  l:color == "" | return | endif
        echo " "
    endif

    " 
    let pattern = a:1
    let n = 2
    while l:n < a:0
        let pattern .= " ".{"a:".l:n}
        let n += 1
    endwhile

    let l:searchList = [ ]

    if l:color =~ "&"
        " highlight region
        let color = substitute(l:color,'&','','g')
        let opt = "b"
        if l:color =~ "*"
            let color = substitute(l:color,'\*','','g')
            let opt .= "l"
        endif
        let l:list = split(l:pattern, g:HighlightFilter_BlockSeparator)
        let l:len = len(l:list)
        let l:searchList += [ l:list[0] ]
        let l:searchList += [ l:list[l:len-1] ]
    elseif l:color =~ "*"
        " highlight all line
        let color = substitute(l:color,'\*','','g')
        let opt = "l"
        let l:searchList += [ l:pattern ]
    else
        " highlight only the matching pattern
        let opt = ""
        let l:searchList += [ l:pattern ]
    endif

    " Check pattern available on the file
    for tmp in l:searchList
        if search(l:tmp) <= 0
            call s:Warn("Pattern:".l:tmp." not found")
            if confirm("","Continue? &yes\n&no",2) == 2
                return
            endif
        endif
    endfor

    if l:pattern[0:1] ==# "\\c"
        " Case insensitive match
        let opt .= "c"
        let pattern = substitute(l:pattern,'\\c','','g')
    elseif l:pattern[0:1] ==# "\\C"
        " Case sensitive match
        let opt .= "C"
        let pattern = substitute(l:pattern,'\\C','','g')
    endif

    if s:HighlightString(l:color,l:pattern,l:opt) != 0
        return
    endif

    if l:pattern != ""
        call s:AutoSaveColorHiglighting()
        call s:AutoSyncFiltWindowData()
    endif

    call s:ReloadColorConfig()
endfunction


" Highlight match pattern with selected color
" Open color id help to select the color
function! highlightFilter#PatternColorHelp(...)
    call highlightFilter#ColorIdHelp("")
    let colorId = input("select color id: ")
    if l:colorId == "" | return | endif
    echo " "

    let args = a:000
    let args += [ l:colorId ]
    call call(function('highlightFilter#PatternColorize'), l:args)
endfunction


" Show all available configuration types 
function! highlightFilter#ShowConfigType(type)
    call s:ReloadTypeConfig()

    if a:type == ""
        " Open menu on screen to choose the config type
        let l:type = s:TypeMenuSelect()
        if l:type <= 0 | return | endif
    else 
        let l:type = a:type
    endif

    " Check if first letter is numeric value
    if "0123456789" !~ l:type[0:0] 
        " type is function name
        let configName = a:type
    else
        " type is number, use function number saved on that position
        let last = len(s:PredefinedTypesList) + len(w:HighlightFilter_TypesList)
        if l:type  < 0 || l:type > l:last
            call s:Error("Type ".a:types." above maximum: ".l:last)
            return
        endif

        let l:type -= 1

        if len("w:HighlightFilter_TypesList") <= 0 && len("s:PredefinedTypesList") <= 0
            call s:Warn("Highlight predifined configuration not found.")
            return
        endif

        if len("w:HighlightFilter_TypesList") <= 0
            let configName = s:PredefinedTypesList[l:type]
        else
            if a:type <= len(w:HighlightFilter_TypesList)
                let configName = w:HighlightFilter_TypesList[l:type]
            else
                let configName = s:PredefinedTypesList[l:type]
            endif
        endif
    endif

    if l:configName != ""
        if !exists("w:".l:configName)
            call s:Error("Error loading w:".l:configName)
            return 1
        endif

        exec("let l:colorPatternsList = w:".l:configName)

        if !exists("l:colorPatternsList")
            call s:Error("Couldn't load config ".l:configName)
            return 1
        endif

        redraw
        echo "Show highlight type ".a:type." ".l:configName
        echo ""
        call s:ShowHighlightCfg(l:colorPatternsList)

        call input("(press key to continue) ")
    endif

    if a:type == ""
        redraw
        call s:ShowConfigType("")
    endif
endfunction


" 
function! highlightFilter#LoadConfigTypeFilter(type)
    call highlightFilter#LoadConfigType(a:type)
    call highlightFilter#ColorFilter(g:HighlightFilter_FilterSplit, "")
endfunction


" Load configuration type
" Show again the configuration menu every time after choosing
" a type.
function! highlightFilter#LoadConfigTypes(type)
    call highlightFilter#LoadConfigType(a:type)
    while 1
        call highlightFilter#LoadConfigType("")
        redraw
    endwhile
endfunction


" Load configuration type
function! highlightFilter#LoadConfigType(type)
    if a:type == ""
        " Open menu on screen to choose the config type
        echo printf("%' '3d)  %s","0","Clear all")
        let l:types = s:TypeMenuSelect()
        if  l:types < 0 | return | endif
    else 
        let l:types = a:type
    endif

    call s:ReloadTypeConfig()

    let loadTypeFlag = 0


    let typeList = split(l:types,' ')
    for type in l:typeList
        " Check if first letter is numeric value
        if "0123456789" !~ l:type[0:0] 
            if l:type ==? "clear"
                echo "Clear highlighting"
                call s:SyntaxClear()
                call s:ListClear()
                continue
            endif

            " type is config name
            let configName = l:type
        else
            if l:type == 0
                echo "Clear highlighting"
                call s:SyntaxClear()
                call s:ListClear()
                continue
            endif

            " type is number, use function number saved on that position
            let last = len(s:PredefinedTypesList) + len(w:HighlightFilter_TypesList)
            if l:type  < 0 || l:type > l:last
                call s:Error("Type ".a:type." above maximum: ".l:last)
                return
            endif

            let l:type -= 1

            if len("w:HighlightFilter_TypesList") <= 0 && len("s:PredefinedTypesList") <= 0
                call s:Warn("Highlight predifined configuration not found.")
                return
            endif

            if len("w:HighlightFilter_TypesList") <= 0
                let configName = s:PredefinedTypesList[l:type]
            else
                if a:type <= len(w:HighlightFilter_TypesList)
                    let configName = w:HighlightFilter_TypesList[l:type]
                else
                    let configName = s:PredefinedTypesList[l:type]
                endif
            endif
        endif

        if l:configName != ""
            exec("let l:colorPatternsList = w:".l:configName)

            redraw
            echo "Highlight type ".a:type." ".l:configName
            echo ""
            call s:ShowHighlightCfg(l:colorPatternsList)

            "echo "Highlight type ".a:type." ".l:configName
            if confirm("","Apply config, &yes\n&no",1) == 2
                continue
            endif

            if !exists("w:ColoredPatternsList")
                let w:ColoredPatternsList = []
                call s:SyntaxClear()
                call s:ListClear()
            endif

            " Add to current highlight config
            exec("let l:configList = w:".l:configName)
            let configFlag = 0
            for config in l:configList
                if s:HighlightString(config[0],config[1],config[2]) == 0
                    let l:configFlag = 1
                endif
            endfor

            if l:configFlag == 0
                " Every config highlihgt failed.
                return
            endif
            let loadTypeFlag = 1

            let  w:LastConfigType = l:configName
        endif
    endfor

    if loadTypeFlag == 1
        call s:SyntaxReload()
        call s:AutoSaveColorHiglighting()
        call s:ReloadColorConfig()
    endif

    call s:ConcealEscSeq()
endfunction


" Load last configuration used 
function! highlightFilter#LastType()
    if exists('w:LastConfigType') && w:LastConfigType != ""
        call s:Warn("No previous config found.")
        return
    endif

    echo "Reload config: ".w:LastConfigType

    call s:ReloadTypeConfig()

    exec("let w:ColoredPatternsList = w:".l:LastConfigType)
    call s:SyntaxReload()
endfunction


" Show all defined hightlight types
function! highlightFilter#TypeShow()
    echo "Highlight types:"

    call s:ReloadTypeConfig()

    if len("w:HighlightFilter_TypesList") <= 0 && len("s:PredefinedTypesList") <= 0
        call s:Warn("Highlight predifined configuration not found.")
        return
    endif
    
    let n = 1 | let i = 0
    while l:i < len(w:HighlightFilter_TypesList)
        echo " ".l:n.") ".w:HighlightFilter_TypesList[l:i]
        let n += 1 | let i += 1
    endwhile

    let i = 0
    while l:i < len(s:PredefinedTypesList)
        echo " ".l:n.") ".s:PredefinedTypesList[l:i]
        let n += 1 | let i += 1
    endwhile
endfunction


" Search all patterns with the selected color names 
" Arg1: space separated color names: m y c rb
function! highlightFilter#ColorSearch(confirm,colors)
    let separator = "###"

    let patterns = s:GetColorPatterns(a:colors,l:separator,a:confirm)
    if l:patterns == ""
        call s:Warn("Empty search ".a:colors." color not found")
        return
    endif

    let patterns = substitute(l:patterns, l:separator, '\\|', 'g')

    echo "Search: ".l:patterns
    if a:confirm == "confirm"
         call confirm("Continue")
    endif

    setlocal nohlsearch 
    silent exec("normal /".l:patterns)
    let @/ = l:patterns
    normal n
endfunction


" Check if buffer or file with this name already exists
function! s:CheckBuffFileExist(filename)
    let all = range(0, bufnr('$'))
    for b in all
        if !buflisted(b) | continue | endif
        if bufname(b) == a:filename
            return 1
        endif
        if filereadable(a:filename) 
            return 1
        endif
    endfor
    return 0
endfunction


" Change current buffer name.
" Get a name not used for this file on current path and not
" loaded on any other buffer.
" Filename format: curren_name-filtN.current_ext
function! s:GetFiltFileName(filepath,filename,extension)
    let tmp = substitute(a:filename, "-filt[0-9].*", "", "")
    let n = 0
    while n <= 100
        let file = a:filepath.'/'.l:tmp.'-filt'.l:n.'.'.a:extension
        if s:CheckBuffFileExist(l:file) == 0 | break | endif
        let n+=1
    endwhile
    return l:file

endfunction


" Filter lines containing patterns.
function! s:BasicFilter(split,rename,patterns)
    let @a = ""
    let patterns = substitute(a:patterns, '|', '\\|', 'g')
    let cmd = 'g/'.l:patterns.'/y A'
    call s:Verbose(1,"BasicFilter",l:cmd)
    silent exec(l:cmd)

    if @a == ""
        call s:Warn("No results found0")
        return 1
    endif

    let cmd = a:split." | edit ".a:rename
    call s:Verbose(1,"BasicFilter","cmd: ".l:cmd)
    silent exec(l:cmd)

    put! a
    return 0
endfunc 


" Filter lines containing patterns with external tool (ag/grep).
function! s:AgGrepFilter(split,rename,patterns)
    let patterns = a:patterns
    let patterns = substitute(l:patterns, '\\c', '', 'g')
    let patterns = substitute(l:patterns, '\\C', '', 'g')

    let file = expand('%')
    let ext  = expand('%:t:e')
    let fileDelete = ""
    let res = 0

    " Check file exist or file is compressed
    if empty(glob(l:file)) || l:ext == "gz" || l:ext == "Z" || l:ext == "bz2" 
        " Buffer not saved on file
        " save a temporary copy
        let file = tempname()
        let fileDelete = l:file
        silent exec(":w! ".l:file)
    endif

    let result = tempname()

    if executable('ag')
        "let cmd = "ag --nofilename"
        let cmd = "ag -s --nofilename"
    else
        if executable('grep')
            call s:Error("grep not found")
            return 1
        endif
        call s:Warn("Silver searcher (ag) not found. Using grep.")
        let cmd = "grep"
    endif
    let l:cmd .= " \"".l:patterns."\" ".l:file
    let l:cmd .= " > ".l:result

    call s:Verbose(1,"AgGrepFilter","cmd: ".l:cmd)
    silent call system(l:cmd)

    let cmd = a:split." | edit ".l:result
    call s:VerboseStop(1,"AgGrepFilter","cmd: ".l:cmd." (press enter)")
    silent exec(l:cmd)

    if getline(1) == "" && line('$') == 1
        call s:Warn("No results found")
        wincmd q
        let res = 1
    else
        let cmd = '0file | file '.a:rename
        silent execute l:cmd
    endif

    call delete(l:result)

    " Clean tmp file used for searching on buffers not saved
    if l:fileDelete != "" | call delete(l:fileDelete) | endif

    return l:res
endfunction 


" Filter lines containing patterns and regions with external tool (awk).
function! s:AwkFilter(split,rename, regionList, patterns)

    if !executable('awk')
        call s:Error("awk not found")
        return 1
    endif

    let file = expand('%')
    let ext  = expand('%:t:e')
    let fileDelete = ""
    let res = 0

    " Check file exist or file is compressed
    if empty(glob(l:file)) || l:ext == "gz" || l:ext == "Z" || l:ext == "bz2" 
        " Buffer not saved on file
        " save a temporary copy
        let file = tempname()
        let fileDelete = l:file
        silent exec(":w! ".l:file)
    endif

    let result = tempname()
    let awkScript = tempname()

    let block = g:HighlightFilter_BlockSeparator
    let rmLine = g:HighlightFilter_BlockRemoveLine
    let rmLineNL = g:HighlightFilter_BlockRemoveLineAddNL

    " Create the awk command to perform filter
    let winId = win_getid()
    silent exec("tabedit ".l:awkScript)
    let awkCmd = "BEGIN        { record=0; line=0; }\n"
    for reg in a:regionList
        let tmpList = split(l:reg, l:block)
        if len (tmpList) != 2
            continue
        endif
        let initTag = substitute(l:tmpList[0], '\\c', '', 'g')
        let initTag = substitute(l:initTag, '\\C', '', 'g')

        let endTag = substitute(l:tmpList[1], '\\c', '', 'g')
        let endTag = substitute(l:endTag, '\\C', '', 'g')

        let initTag = substitute(l:initTag,"/","\/","")
        if l:reg =~ "^".l:rmLine.".*".l:block
            " Start of region, remove line content
            let initTag = substitute(l:initTag,"^".l:rmLine,"","")
            let awkCmd .= "/".l:initTag."/ { if (region==0) { region=2; }; }\n"
        elseif l:reg =~ "^".l:rmLineNL."l*".l:block
            " Start of region, remove line content and add new line
            let initTag = substitute(l:initTag,"^".l:rmLineNL,"","")
            let awkCmd .= "/".l:initTag."/  { if (region!=0) { region=2; printf(\"\\n\"); }; }\n"
        else
            " Start of region, show line content
            let awkCmd .= "/".l:initTag."/ { if (region==0) { region=1; }; }\n"
        endif

        let endTag = substitute(l:endTag,"/","\/","")
        if l:reg =~ l:block.l:rmLine
            " End of region, remove line content
            let endTag = substitute(l:endTag,"^".l:rmLine,"","")
            let awkCmd .= "/".l:endTag."/  { region=0; }\n"
        elseif l:reg =~ l:block.l:rmLineNL
            " End of region, remove line content and add new line
            let endTag = substitute(l:endTag,"^".l:rmLineNL,"","")
            let awkCmd .= "/".l:endTag."/  { if (region!=0) { region=0; printf(\"\\n\"); }; }\n"
        else
            " End of region, show line content
            let awkCmd .= "/".l:endTag."/  { if (region!=0) { region=0; printf(\"%s\\n\", $0); }; }\n"
        endif
    endfor
    if a:patterns != ""
        let patterns = substitute(a:patterns, '\\c', '', 'g')
        let patterns = substitute(l:patterns, '\\C', '', 'g')
        let awkCmd .= "/".l:patterns."/     { if (region==0) { line=1; }; }\n"
    endif
    let awkCmd .= "{ if (region==1 || line==1) { printf(\"%s\\n\", $0); line=0; }; }\n"
    let awkCmd .= "{ if (region==2)            { region=1; }; }\n"
    call append(line('$'), split(l:awkCmd,"\n"))
    normal ggdd
    w
    call win_gotoid(l:winId)

    " Apply awk filter
    silent exec("r !awk -f ".l:awkScript." ".l:file." > ".l:result)

    let cmd = a:split." | edit ".l:result
    call s:Verbose(1,"AwkFilter",l:cmd)
    silent exec(l:cmd)

    if getline(1) == "" && line('$') == 1
        call s:Warn("No results found")
        wincmd q
        let res = 1
    else
        let cmd = '0file | file '.a:rename
        "call s:Verbose(1,"AwkFilter","cmd: ".l:cmd)
        silent execute l:cmd
    endif

    " DEBUG: comment next line to debug the awk script
    silent exec("bd ".l:awkScript)

    call delete(l:result)
    call delete(l:awkScript)

    " Clean tmp file used for searching on buffers not saved
    if l:fileDelete != "" | call delete(l:fileDelete) | endif

    return l:res
endfunction 


" Conceal any ANSI Escape sequence characters
function! s:ConcealEscSeq()

    if g:HighlightFilter_ConcealAnsiEscSeq == 1
        exec("syn match AnsiEscSeqCol /\\\\[[0-9;]*m/ conceal cchar=>")
        exec("syn match AnsiEscSeqK   /\\\\[K/ conceal cchar=<")
        exec("syn match AnsiEscSeqEnd /\\\\[0m/ conceal cchar=<")
        set conceallevel=3
        set concealcursor=vnc
        set nocursorline
    endif
endfunction 


" Show all highilight patterns on current window
function! highlightFilter#ShowPatterns()
    if exists('w:FiltWinSyncList') 
        if w:FiltWinSyncList[0] == "filt"
            " Currrent window is a filter window, get patterns from the filter's list of
            " saved configurations
            echo "Filter window, highlighted patterns: "
            let patterns = substitute(w:FiltWinSyncList[2], '|', '\n   ', 'g')
        endif
    endif

    if !exists('l:patterns') 
        echo "Highlighted patterns: "
        let patterns = s:GetColorPatterns("","\n   ","")
    endif

    if l:patterns == ""
        echo "Highlighted patterns: not found."
    else
        echo "   ".l:patterns
    endif
endfunction


" Filter all linew matching patterns with the selected color names 
" Arg1: space separated color names: m y c rb
function! highlightFilter#ColorFilter(split,colors)
    let w:HighlightFilter_FiltColors = a:colors

    if a:split == ""
        call s:Error("Missing argument, split command.")
        return
    endif

    let l:ColoredPatternsList = w:ColoredPatternsList
    let separator = "###"

    let patterns = s:GetColorPatterns(a:colors,l:separator,"")
    "if l:patterns == ""
        "call s:Warn("Empty search ".a:colors)
        "return
    "endif

    let regionsList = s:GetColorRegionPatterns(a:colors)
    if len(l:regionsList) == 0 && l:patterns == ""
        call s:Warn("Empty search ".a:colors)
        return
    endif

    let tmp = substitute(l:patterns, l:separator, ', ', 'g')

    echo "This may take a while ..."
    let patterns = substitute(l:patterns, l:separator, '\|', 'g')

    if a:split == "none"
        let rename = expand("%")
    else
        let name = expand("%:t:r")
        let path = expand("%:p:h")
        let ext = expand("%:e")
        "let base_filename = expand("%")
        let rename = s:GetFiltFileName(l:path,l:name,l:ext)
    endif

    let baseWinNr = win_getid()
    let winName = expand('%')

    if len(l:regionsList) != 0 && g:HighlightFilter_AwkFilter != 0
        if s:AwkFilter(a:split,l:rename,l:regionsList,l:patterns) != 0
            return
        endif
    elseif line('$') >= g:HighlightFilter_AgGrepFilter && g:HighlightFilter_AgGrepFilter > 0
    "if line('$') >= g:HighlightFilter_AgGrepFilter && g:HighlightFilter_AgGrepFilter > 0
        if s:AgGrepFilter(a:split,l:rename,l:patterns) != 0
            return
        endif
    else
        if s:BasicFilter(a:split,l:rename,l:patterns) != 0
            call s:ConcealEscSeq()
            return
        endif
    endif

    " On horizonta split. Fit window to content
    if a:split == "split"
        if line('$') < winheight(0)
            exec("resize ".line('$'))
        endif
    endif

    normal gg
    set nohls
    let w:HighlightFilter_FiltColors = a:colors

    " Aplly color config from the base window
    let w:ColoredPatternsList = l:ColoredPatternsList
    let w:LastConfigType = l:ColoredPatternsList
    call s:SyntaxReload()

    " Safe filter/base window synchronization parameters
    if g:HighlightFilter_FiltSync == 1
        if a:split == "new" || a:split =~ "vnew" || a:split == "split"
            let newWinNr = win_getid()

            " Go to base window
            if win_gotoid(l:baseWinNr) == 1
                let w:FiltWinSyncList  = [ "main", l:newWinNr, l:patterns, a:split, g:HighlightFilter_AutoSyncFiltPos, g:HighlightFilter_AutoSyncFiltData ]
                call s:Verbose(1,"ColorFilter","main"." ".l:newWinNr." ".l:patterns." ".a:split." ".g:HighlightFilter_AutoSyncFiltPos." ".g:HighlightFilter_AutoSyncFiltData)
                let baseName = expand('%s')

                " Return to filter window
                call win_gotoid(l:newWinNr)
                let w:FiltWinSyncList  = [ "filt", l:baseWinNr, l:patterns, a:split, g:HighlightFilter_AutoSyncFiltPos, g:HighlightFilter_AutoSyncFiltData ]
                call s:Verbose(1,"ColorFilter","filt"." ".l:baseWinNr." ".l:patterns." ".a:split." ".g:HighlightFilter_AutoSyncFiltPos." ".g:HighlightFilter_AutoSyncFiltData)
                let filtName = expand('%s')

                silent exec("autocmd CursorMoved ".l:baseName." :call s:AutoSyncFiltWindowPosition()")
                silent exec("autocmd CursorMoved ".l:filtName." :call s:AutoSyncFiltWindowPosition()")
            endif
        endif
    endif

    call s:ConcealEscSeq()
    redraw
endfunction


" Show all colors defined.
function! highlightFilter#ColorHelp(filter)
    if !exists("s:ColorDefinitionList")
        call s:Error("Color definition config not found")
        return
    endif
    redraw

    let omittList = split(s:colorhelpOmittColors,' ')
    let filters = a:filter

    " Remove from omitt list any config requested on filter
    let n = 0
    for omitt in l:omittList
        if l:filters =~ l:omitt
            call remove(l:omittList, l:n)
        endif
        let n += 1
    endfor

    let l:colors = s:baseColors
    if l:filters =~ "all"
        "let l:colors = s:baseColors
        let omittList = []
        let filters = substitute(l:filters,'all','','g')
        let filters = substitute(l:filters,'  ','','g')
        let str = "configurations"
    else
        echo "Use argument 'all' to show all available color configurations"
        echo "Color options: ".join(l:omittList)
        echo ""
        let str = "colors"
    endif

    let filters = toupper(l:filters)

    let colorLen = 0
    let colorHelpList = []
    for colorList in s:ColorDefinitionList
        if l:filters != ""
            let found = 0
            for tmp in split(l:filters,' ')
                if matchstr(l:colorList[4], l:tmp) != "" 
                    let found = 1
                    break
                endif
            endfor
            if l:found != 1 | continue | endif
        endif

        let skip = 0
        for omitt in l:omittList
            if l:colorList[4] =~ l:omitt
                let skip = 1
            endif
        endfor
        if l:skip == 1 | continue | endif

        " Add to the list of colors to display
        let colorHelpList += [ l:colorList ]

        " Work out the maximum color name lenght
        let nameLen = len(l:colorList[4])
        if l:nameLen > l:colorLen
            let l:colorLen = l:nameLen
        endif
    endfor

    let max = winheight(0) - 1
    let n = 0
    let j = 0
    for colorList in l:colorHelpList
        if l:n == 0
            let prevColor = substitute(l:colorList[0],"[0-9]",'','g')
        endif

        let baseColor = substitute(l:colorList[0],"[0-9]",'','g')
        if l:baseColor != l:prevColor
            let prevColor = l:baseColor
            if l:j >= l:max
                " scroll screen
                call input("(Press ENTER to continue)")
                redraw
                let j = 0
            else
                echo ""
            endif
            let j += 1
        endif

        " Highlight command don't allow using characters: !"·$%&/()=?¿^*{}[]`+-_.,;:¡
        " Transform characters
        "    Bold modifier      : ! change to B
        "    Background color   : # change to H
        "    Underline modifier : _ change to U
        let l:colorName = l:colorList[4]
        let l:color = l:colorList[0]
        let l:color = substitute(l:color,'!','B','')
        let l:color = substitute(l:color,'#','H','')
        let l:color = substitute(l:color,'_','U','')

        " Show color name, highlight text
        exec("echohl HighlightFilter_Color".toupper(l:color))
        let format = "%' '-".l:colorLen."s "
        echon  printf(l:format, l:colorName)
        echohl None

        let n += 1
    endfor
    echo l:n." ".l:str." found"
    call s:ReloadColorConfig()
endfunction


" Show all colors defined.
function! highlightFilter#ColorIdHelp(filter)
    if !exists("s:ColorDefinitionList")
        call s:Error("Color definition config not found")
        return
    endif

    let omittList = split(s:idHelpColorIdHelpOmitt,' ')
    let filters = a:filter

    " Remove from omitt list any config requested on filter
    let n = 0
    for omitt in l:omittList
        if l:filters =~ l:omitt
            call remove(l:omittList, l:n)
        endif
        let n += 1
    endfor

    let l:colors = s:baseColorIds
    if l:filters =~ "all"
        "let l:colors = s:baseColorIds
        let omittList = []
        let filters = substitute(l:filters,'all','','g')
        let filters = substitute(l:filters,'  ','','g')
        let str = "configurations"
    else
        echo "Use argument 'all' to show all available color configurations"
        echo "*Config options: ".s:idHelpColorIdHelpOmitt." * & (".s:colorhelpOmittColors." all_line region)"
        echo ""
        let str = "colors"
    endif

    let filters = toupper(l:filters)

    let colorLen = 0
    let colorHelpList = []
    let n = 0
    for colorList in s:ColorDefinitionList
        if l:filters != ""
            let found = 0
            for tmp in split(l:filters,' ')
                if matchstr(l:colorList[0], l:tmp) != "" 
                    let found = 1
                    break
                endif
            endfor
            if l:found != 1 | continue | endif
        endif

        let skip = 0
        for omitt in l:omittList
            if l:colorList[0] =~ l:omitt | let skip = 1 | endif
        endfor
        if l:skip == 1 | continue | endif

        " Add to the list of colors to display
        let colorHelpList += [ l:colorList ]

        " Work out the maximum color name lenght
        let nameLen = len(l:colorList[0])
        if l:nameLen > l:colorLen
            let l:colorLen = l:nameLen
        endif
    endfor

    let max = winheight(0) - 1
    let n = 0
    let j = 0
    for colorList in l:colorHelpList
        if l:n == 0
            let prevColor = substitute(l:colorList[0],"[0-9]",'','g')
        endif

        let baseColor = substitute(l:colorList[0],"[0-9]",'','g')
        if l:baseColor != l:prevColor
            echo ""
            let prevColor = l:baseColor
            if l:j >= l:max
                " scroll screen
                call input("(Press ENTER to continue)")
                redraw
                let j = 0
            else
                echo ""
            endif
            let j += 1
        endif

        " Highlight command don't allow using characters: !"·$%&/()=?¿^*{}[]`+-_.,;:¡
        " Transform characters
        "    Bold modifier      : ! change to B
        "    Background color   : # change to H
        "    Underline modifier : _ change to U
        let l:color = l:colorList[0]
        let l:color = substitute(l:color,'!','B','')
        let l:color = substitute(l:color,'#','H','')
        let l:color = substitute(l:color,'_','U','')

        " Show color name, highlight text
        exec("echohl HighlightFilter_Color".toupper(l:color))
        let format = "%' '-".l:colorLen."s "
        echon  printf(l:format, l:color)
        echohl None

        let n += 1
    endfor
    echo l:n." ".l:str." found"
    call s:ReloadColorConfig()

    "if l:filters !~ "all"
        "echo "*Config options: ".s:idHelpColorIdHelpOmitt." * (".s:colorhelpOmittColors." all_line)"
    "endif
endfunction


" Show the saved configurations
function! highlightFilter#OpenConfig()
    let tmpList = []

    if g:HighlightFilter_AutoSave == 1
    let file  = expand('%:h')."/"
    let file .= g:HighlightFilter_AutoSaveSourcePrefix
    let file .= expand('%:t')
    let file .= g:HighlightFilter_AutoSaveSourceSufix
        call add(l:tmpList, l:file)
    endif

    if exists("g:HighlightFilter_SourceFiles")
        let list = split(g:HighlightFilter_SourceFiles,' ')
        for i in l:list
            call add(l:tmpList, l:i)
        endfor
    endif

    let window = 3
    let done = 0
    redraw

    for file in l:tmpList
        if filereadable(l:file)
            "if l:window >= 3
            if l:window >= g:HighlightFilter_CfgSplitNumb
                silent exec("tabedit ".l:file)
                if line('$') == 1
                    tabclose
                else
                    let window = 1
                    let done = 1
                endif
            else
                silent exec("vsplit ".l:file)
                if line('$') == 1
                    exec("bdelete ".l:file)
                else
                    let window += 1
                    let done = 1
                endif
            endif
        endif
    endfor

    if l:done != 1
        call s:Warn("Config not found")
    endif
    return
endfunction


 "On new file opened, load last color highlighting 
function! s:AutoLoadColorHiglighting()
    if g:HighlightFilter_Autoload != 1 | return | endif

    "call s:ReloadColorConfig()
    if exists("w:HighlightFilter_TypesList")
        return
    endif
    let w:HighlightFilter_TypesList = []

    " Load file config
    let w:HighlightFilter_TypesList = []
    let file  = expand('%:h')."/"
    let file .= g:HighlightFilter_AutoSaveSourcePrefix
    let file .= expand('%:t')
    let file .= g:HighlightFilter_AutoSaveSourceSufix

    if !filereadable(l:file)
        return
    endif

    exec("source ".l:file)

    " Load last configuration.
    if len(w:HighlightFilter_TypesList) >= 0
        for type in w:HighlightFilter_TypesList
            if l:type =~# "Config"
                echo "Load highlight config "l:type
                exec("let w:ColoredPatternsList = w:".l:type)
                let  w:LastConfigType = l:type
                call s:SyntaxReload()
                break
            endif
        endfor
    endif
    call s:ReloadColorConfig()
endfunction

"autocmd! BufWinEnter *  :call s:AutoLoadColorHiglighting()


" Choose folding level on current line 
function! s:MarkdownFolds(foldexpr)
    if a:foldexpr == ""
        return 0
    endif

    if matchstr( getline(v:lnum), a:foldexpr ) != ""
        return 0
    else
       if matchstr( getline(v:lnum-1), a:foldexpr) != "" || matchstr( getline(v:lnum+1), a:foldexpr) != "" 
           return 1
       else
          return 2
       endif
    endif
endfunction


" Fold file using patterns from the selected colors 
function! highlightFilter#HighlightFoldColors(colors)
    let separator = "###"

    let patterns = s:GetColorPatterns(a:colors,l:separator,"")
    if l:patterns == ""
        call s:Warn("Empty search ".a:colors)
        return
    endif

    call s:Warn("Attention: on large files this could take several minuts")

    let tmp = substitute(l:patterns, l:separator, ', ', 'g')
    call confirm("Fold patterns: ".l:tmp)
    redraw
    echo "This may take a while ..."

    let w:foldexpr = substitute(l:patterns, l:separator, '\\|', 'g')
    setlocal foldmethod=expr
    setlocal foldexpr=s:MarkdownFolds(w:foldexpr)

    " Set fold colors
    hi Folded term=NONE cterm=NONE gui=NONE ctermbg=DarkGrey 

    " Remove fold padding charactesr -----
    setlocal fillchars="vert:|,fold: "
    setlocal foldtext="..."
    setlocal foldlevel=0 
    setlocal foldcolumn=0
endfunction


" Fold file using selected patterns 
function! highlightFilter#HighlightFoldPatterns(patterns)
    if a:patterns == ""
        let separator = "###"

        let patterns = s:GetColorPatterns("",l:separator,"")
        if l:patterns == ""
            call s:Warn("Empty search ".a:patterns)
            return
        endif

        call s:Warn("Attention: on large files this could take several minuts")

        let tmp = substitute(l:patterns, l:separator, ', ', 'g')
        call confirm("Fold patterns: ".l:tmp)
        redraw
        echo "This may take a while ..."

        let w:foldexpr = substitute(l:patterns, l:separator, '\\|', 'g')
    else
        let w:foldexpr = substitute(a:patterns, ' ', '\\|', 'g')
    endif

    setlocal foldmethod=expr
    setlocal foldexpr=s:MarkdownFolds(w:foldexpr)

    " Set fold colors
    hi Folded term=NONE cterm=NONE gui=NONE ctermbg=DarkGrey 

    " Remove fold padding charactesr -----
    setlocal fillchars="vert:|,fold: "
    setlocal foldtext="..."
    setlocal foldlevel=0 
    setlocal foldcolumn=0
endfunction


" Show patterns used for folding. 
function! highlightFilter#HighlightShowFoldExpr()
    if !exists('w:foldexpr')
        call s:Warn("Fold patterns not found.")
        return
    endif
    echo "Fold expr: ".substitute(w:foldexpr, '\\|', ' ', 'g')
endfunction


" Force save current configuration
function! highlightFilter#ForceAutoSaveColorHiglighting()
    let fileCfg  = expand('%:h')."/"
    let fileCfg .= g:HighlightFilter_AutoSaveSourcePrefix
    let fileCfg .= expand('%:t')
    let fileCfg .= g:HighlightFilter_AutoSaveSourceSufix

    let date = system("date +%y%m%d_%H%M")
    let date = substitute(l:date, '\n\+$', '', '')

    let name = "Config_".l:date
    let w:LastConfigType = l:name
    call s:SaveColorHiglighting(l:fileCfg,l:name)
    echo "Config saved: ".l:fileCfg

    if exists("g:HighlightFilter_AutosaveFiles")
        let n = 1
        let list = split(g:HighlightFilter_AutosaveFiles,' ')
        for file in l:list
            let name = "Config".l:n."_".l:date
            call s:SaveColorHiglighting(l:file,l:name)
            let n += 1
            echo "Config saved: ".l:file
        endfor
    endif
endfunction


" Configure data syncronization between main and filter window. 
function! highlightFilter#AutoSyncFiltWindowPosCfg(state)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    if a:state == "on"
        echo "Highlight window sync movement on"
        let autoUpdate = 1
    elseif a:state == "off"
        echo "Highlight window sync movement off"
        let autoUpdate = 0
    else
        call s:Error("Arguments: on/off")
        return
    endif

    let w:FiltWinSyncList[4] = l:autoUpdate

    let winNr0 = w:FiltWinSyncList[1]
    let winNr1 = win_getid()

    if win_gotoid(l:winNr0) == 0
        unlet w:FiltWinSyncList
        return
    endif
    let w:FiltWinSyncList[4] = l:autoUpdate
    call win_gotoid(l:winNr1)
endfunction


" Syncronize position between original file and filter window 
" Note: experimental function it may not work if exist several 
" identical lines on both buffers.
function! highlightFilter#SyncSwitchWindowPosition(...)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    " Change position sinchcronization mode
    if a:0 >= 1 && a:1 != ""
        if a:1 == "auto"
            call highlightFilter#AutoSyncFiltWindowPosCfg("on")
        elseif a:1 == "noauto"
            call highlightFilter#AutoSyncFiltWindowPosCfg("off")
        else
            call s:Warn("Unknown mode:'".a:1."'. Use modes: auto/noauto")
        endif
        return
    endif

    let winNr0 = w:FiltWinSyncList[1]

    let line = getline('.')
    let line = substitute(l:line, ' ', '\\ ', 'g')
    let line = substitute(l:line, '[', '\\[', 'g')
    let line = substitute(l:line, ']', '\\]', 'g')
    let line = substitute(l:line, '\.', '\\.', 'g')
    "call s:Verbose(1,"SyncSwitchWindowPosition","filt:".l:line)

    if win_gotoid(l:winNr0) == 0
        unlet w:FiltWinSyncList
        return
    endif

    " Get current position
    let ypos = getpos(".")
    let xpos = col('.')
    silent let searchCmd = @/
    try
        silent normal gg
        silent! exec("normal /".l:line)
        silent let @/ = l:line
        silent! normal n
    catch
        " Restore previous position
        silent call setpos('.', l:ypos)
        silent exec("normal 0".l:xpos."l")
    endtry
    silent let @/ = l:searchCmd
    "normal k
endfunction


" Syncronize position between original file and filter window 
" Leave cursor on the complementary window, if currently on filter
" window leave cursor on main window.
" Note: experimental function it may not work if exist several 
" identical lines on both buffers.
function! highlightFilter#SyncWindowPosition(...)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    let winNr1 = win_getid()

    if a:0 >= 1 
        let tmp=a:1 
    else
        let tmp=""
    endif

    call highlightFilter#SyncSwitchWindowPosition(l:tmp)
    call win_gotoid(l:winNr1)
endfunction


" Handle movement events on filter or main window.
" Perform window position synchronization if configuration enabled
function! s:AutoSyncFiltWindowPosition()
    if !exists('w:FiltWinSyncList') 
        return
    endif
    if w:FiltWinSyncList[4] == 1
        call highlightFilter#SyncWindowPosition()
    endif
endfunction


" Configure data syncronization between main and filter window. 
function! highlightFilter#AutoSyncFiltWindowDataCfg(state)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    if a:state == "on"
        echo "Highlight window sync data on"
        let autoUpdate = 1
    elseif a:state == "off"
        echo "Highlight window sync data off"
        let autoUpdate = 0
    else
        call s:Error("Arguments: on/off")
        return
    endif

    let w:FiltWinSyncList[5] = l:autoUpdate

    let winNr0 = w:FiltWinSyncList[1]
    let winNr1 = win_getid()

    if win_gotoid(l:winNr0) == 0
        unlet w:FiltWinSyncList
        return
    endif
    let w:FiltWinSyncList[5] = l:autoUpdate
    call win_gotoid(l:winNr1)
endfunction


" Synchronize data of filter window with main window 
function! highlightFilter#SyncFiltWindowData(...)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    " Change position sinchcronization mode
    if a:0 >= 1 && a:1 != ""
        if a:1 == "auto"
            call s:Verbose(1,"SycnFiltWindowData","auto")
            call highlightFilter#AutoSyncFiltWindowDataCfg("on")
        elseif a:1 == "noauto"
            call s:Verbose(1,"SycnFiltWindowData","noauto")
            call highlightFilter#AutoSyncFiltWindowDataCfg("off")
        else
            call s:Warn("Unknown mode:'".a:1."'. Use modes: auto/noauto")
        endif
        return
    endif

    let type   = w:FiltWinSyncList[0]
    let winNr0 = w:FiltWinSyncList[1]
    let winNr1 = win_getid()
    let filt   = w:FiltWinSyncList[2]
    let split  = w:FiltWinSyncList[3]
    "echo "type:".l:type." win0:".l:winNr0." filt:".l:filt." split:".l:split
    "
    call s:Verbose(1,"SycnFiltWindowData","type:".l:type." win0:".l:winNr0." win1:".l:winNr1." filt:".l:filt." split:".l:split)

    if l:type == "main"
        if win_gotoid(l:winNr0) == 0
            call s:Verbose(1,"SycnFiltWindowData","win0 not found")
            unlet w:FiltWinSyncList
            return 1
        endif
        let filt       = w:FiltWinSyncList[2]
        let split      = w:FiltWinSyncList[3]
        let autoMove   = w:FiltWinSyncList[4]
        let autoUpdate = w:FiltWinSyncList[5]

        " Close filter window and buffer
        exec("bdelete! ".expand('%'))

        " Return to the original buffer's window
        call win_gotoid(l:winNr1)
    else
        " Current window is filtered buffer's window
        let autoMove   = w:FiltWinSyncList[4]
        let autoUpdate = w:FiltWinSyncList[5]

        " Close filter window and buffer
        exec("bdelete! ".expand('%'))

        " Goto original buffer's window
        if win_gotoid(l:winNr0) == 0
            call s:Verbose(1,"SycnFiltWindowData","win1 not found")
            unlet w:FiltWinSyncList
            return 1
        endif
    endif

    call s:Verbose(1,"SycnFiltWindowData","ColorFilter ".l:split." ".w:HighlightFilter_FiltColors)
    "call highlightFilter#ColorFilter(l:split, a:filt)
    call highlightFilter#ColorFilter(l:split, w:HighlightFilter_FiltColors)

    let w:FiltWinSyncList[4] = l:autoMove
    let w:FiltWinSyncList[5] = l:autoUpdate

    " Return to previous window
    call win_gotoid(l:winNr1)
    call s:VerboseStop(1,"SycnFiltWindowData","")
endfunction


" Update main window content, and synchronize filter split window if exists. 
function! highlightFilter#Update()

    if !exists('w:FiltWinSyncList') 
        " Update main window
        edit!
        return
    endif

    let type   = w:FiltWinSyncList[0]
    let winNr0 = w:FiltWinSyncList[1]
    let winNr1 = win_getid()
    let filt   = w:FiltWinSyncList[2]
    let split  = w:FiltWinSyncList[3]
    "
    call s:Verbose(1,"Update","type:".l:type." win0:".l:winNr0." win1:".l:winNr1." filt:".l:filt." split:".l:split)

    if l:type == "main"
        call s:Verbose(1,"Update","Update main window")
        " Update main window
        edit!

        " Move to filter window
        if win_gotoid(l:winNr0) == 0
            call s:Verbose(1,"Update","win0 not found")
            unlet w:FiltWinSyncList
            return 1
        endif

        let split      = w:FiltWinSyncList[3]
        let autoMove   = w:FiltWinSyncList[4]
        let autoUpdate = w:FiltWinSyncList[5]
        let colors     = w:HighlightFilter_FiltColors
        let pos       = line('.')

        " Close filter window and buffer
        exec("bdelete! ".expand('%'))

        " Return to main window
        call win_gotoid(l:winNr1)
    else
        call s:Verbose(1,"Update","Update filter window")

        " Current window is filtered buffer's window
        let split      = w:FiltWinSyncList[3]
        let autoMove   = w:FiltWinSyncList[4]
        let autoUpdate = w:FiltWinSyncList[5]
        let colors     = w:HighlightFilter_FiltColors
        let pos        = line('.')

        " Close filter window and filter buffer
        exec("bdelete! ".expand('%'))

        " Goto original buffer's window
        if win_gotoid(l:winNr0) == 0
            call s:Verbose(1,"Update","win1 not found")
            unlet w:FiltWinSyncList
            return 1
        endif

        " Update main window
        edit!
    endif

    " Apply filter again
    call s:Verbose(1,"Update","ColorFilter ".l:split." ".l:filt)
    call highlightFilter#ColorFilter(l:split, w:HighlightFilter_FiltColors)

    " Restore line position on filter windows
    silent exec("normal ".l:pos."G")

    " Restore synchronization options
    let w:FiltWinSyncList[4] = l:autoMove
    let w:FiltWinSyncList[5] = l:autoUpdate

    " Return to previous window
    call win_gotoid(l:winNr1)
    call s:VerboseStop(1,"Update","")
endfunction


" Compare current file extension
function! s:IsFileExt(extensions)
    let l:currentExt = expand("%:e")
    for ext in split(a:extensions,' ')
        if l:currentExt ==? l:ext
            return 1
        endif
    endfor
    return 0
endfunction


" Synchronize data on filter and main window
function! s:AutoSyncFiltWindowData()
    if !exists('w:FiltWinSyncList')
        if g:HighlightFilter_AutoFilt == 1
            if s:IsFileExt(g:HighlightFilter_AutoFiltExtensions) == 1
                call highlightFilter#ColorFilter(g:HighlightFilter_FilterSplit, "")
                return
            endif
            if s:IsFileExt(g:HighlightFilter_AutoFiltNotExtensions) == 0
                redraw
                if confirm("","Open filter window: &yes\n&no",1) == 2
                    return
                endif
                call highlightFilter#ColorFilter(g:HighlightFilter_FilterSplit, "")
                return
            endif
        endif
    endif
    if exists('w:FiltWinSyncList') 
        if w:FiltWinSyncList[5] == 1
            call highlightFilter#SyncFiltWindowData("")
        endif
    endif
endfunction


" Synchronize filter and main window
" On any change synchronize both: position and data.
function! highlightFilter#AutoSyncFiltWindowCfg()
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif
    call highlightFilter#AutoSyncFiltWindowPosCfg()
    call highlightFilter#AutoSyncFiltWindowDataCfg()
endfunction


function! highlightFilter#SyncFiltWindowCfg(...)
    if !exists('w:FiltWinSyncList') 
        call s:Warn("Window synchronization not active.")
        return
    endif

    if a:0 >= 1 
        let tmp=a:1 
    else
        let tmp=""
    endif
    call highlightFilter#AutoSyncFiltWindowPosCfg(l:tmp)

    "if a:0 >= 1 && a:1 != ""
        "call highlightFilter#AutoSyncFiltWindowPosCfg(a:1)
        "call highlightFilter#AutoSyncFiltWindowDataCfg(a:1)
    "else
        "call highlightFilter#AutoSyncFiltWindowPosCfg()
        "call highlightFilter#AutoSyncFiltWindowDataCfg()
    "endif
endfunction


" Refresh highlighting 
function! highlightFilter#Refresh()
    " Refresh current window highlight
    call s:ReloadColorConfig()
    call s:SyntaxReload()

    if exists('w:FiltWinSyncList')
        " Refresh synchronized window highlight
        let winNr0 = w:FiltWinSyncList[1]
        let winNr1 = win_getid()

        if win_gotoid(l:winNr0) == 0
            unlet w:FiltWinSyncList
        else
            call s:SyntaxReload()
            call win_gotoid(l:winNr1)
        endif
    endif
endfunction


function! highlightFilter#getVisualSel()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return escape(join(lines, "\n"),' \')
endfunction


function! highlightFilter#HighlightWord()
    call highlightFilter#PatternColorize(escape(expand('<cword>'),' \'))
endfunction


function! highlightFilter#HighlightWholeWord()                                                         
    call highlightFilter#PatternColorize(escape(expand('<cword>'),' \'))
endfunction


function! highlightFilter#HighlightLine(color)
    call highlightFilter#PatternColorize(escape(getline('.'),' \'),a:color)
endfunction


function! highlightFilter#Help()
    echo "highlightFiler.vim abbreviations' help:"
    echo "--------------------------------------------------------------------- "
    echo " Hihglight types          : "
    echo "   Load                   : "
    echo "    hit  [TYPE_NAME]      : apply selected highlight"
    echo "    hitf [TYPE_NAME]      : apply selected highlight, open filter split"
    echo "   Save                   : "
    echo "    hicfg                 : open all highlight configuration files"
    echo "    hisv [TYPE_NAME]      : save current highlight configuration"
    echo "    hifsv [TYPE_NAME]     : force save current highlight configuration"
    echo " "
    echo " Color help               : "
    echo "    hicol [all/color]     : show highlighting color names"
    echo "    hiid  [all/color_id]  : show highlighting color IDs"
    echo " "
    echo " Highlight commands       : "
    echo "    hic PATTERN  COLOR_ID : apply color highlight"
    echo "    hirm                  : remove all highlights"
    echo "    hiu                   : undo last highlight"
    echo "    hish                  : show highlight applied on current file"
    echo "    hishp                 : show highlight patterns"
    echo "    hicrm [COLOR_ID]      : highlight color remove"
    echo "    hics [COLOR_ID]       : highlight color search"
    echo " "
    echo " Folding                  : "
    echo "    hifold [COLOR_ID]     : perform fold, show only lines with highlighting"
    echo "    hifoldsh              : show folding patterns"
    echo " "
    echo " Filter window            : "
    echo "    hif                   : open all lines containing any highlights on a new split"
    echo "    hifs                  : open all lines containing any highlights on a new horizontal split"
    echo "    hifv                  : open all lines containing any highlights on a new vertical split"
    echo "    hift                  : open all lines containing any highlights on a new tab"
    echo "    hifn                  : open all lines containing any highlights on a new buffer"
    echo "    hisy                  : synchronize filter window data and position"
    echo "  Filter position         : "
    echo "    hip                   : synchcronize position"
    echo "    hips                  : synchonize position and switch window"
    echo "    hipsa                 : enable position auto synchonize"
    echo "    hipsn                 : disable position auto synchonize"
    echo "  Filter data             : "
    echo "    hids                  : sychcronize data changes"
    echo "    hidsa                 : enable data change auto synchonize"
    echo "    hidsn                 : disable data changes auto synchonize"
    echo " "
    echo "    Hiup                  : update main and filtered buffer contents"
    echo " "
    echo " Others"
    echo "    hir                   : refresh all highlightings"
    echo " "

    "let helpList = []
    "let helpList += [  "highlightFiler.vim abbreviations' help:" ]
    "let helpList += [  "--------------------------------------------------------------------- " ]
    "let helpList += [  " Hihglight types          : " ]
    "let helpList += [  "   Load                   : " ]
    "let helpList += [  "    hit  [TYPE_NAME]      : apply selected highlight" ]
    "let helpList += [  "    hitf [TYPE_NAME]      : apply selected highlight, open filter split" ]
    "let helpList += [  "   Save                   : " ]
    "let helpList += [  "    hicfg                 : open all highlight configuration files" ]
    "let helpList += [  "    hisv [TYPE_NAME]      : save current highlight configuration" ]
    "let helpList += [  "    hifsv [TYPE_NAME]     : force save current highlight configuration" ]
    "let helpList += [  " " ]
    "let helpList += [  " Color help               : " ]
    "let helpList += [  "    hicol [all/color]     : show highlighting color names" ]
    "let helpList += [  "    hiid  [all/color_id]  : show highlighting color IDs" ]
    "let helpList += [  " " ]
    "let helpList += [  " Highlight commands       : " ]
    "let helpList += [  "    hic PATTERN  COLOR_ID : apply color highlight" ]
    "let helpList += [  "    hirm                  : remove all highlights" ]
    "let helpList += [  "    hiu                   : undo last highlight" ]
    "let helpList += [  "    hish                  : show highlight applied on current file" ]
    "let helpList += [  "    hishp                 : show highlight patterns" ]
    "let helpList += [  "    hicrm [COLOR_ID]      : highlight color remove" ]
    "let helpList += [  "    hics [COLOR_ID]       : highlight color search" ]
    "let helpList += [  " " ]
    "let helpList += [  " Folding                  : " ]
    "let helpList += [  "    hifold [COLOR_ID]     : perform fold, show only lines with highlighting" ]
    "let helpList += [  "    hifoldsh              : show folding patterns" ]
    "let helpList += [  " " ]
    "let helpList += [  " Filter window            : " ]
    "let helpList += [  "    hif                   : open all lines containing any highlights on a new split" ]
    "let helpList += [  "    hifs                  : open all lines containing any highlights on a new horizontal split" ]
    "let helpList += [  "    hifv                  : open all lines containing any highlights on a new vertical split" ]
    "let helpList += [  "    hift                  : open all lines containing any highlights on a new tab" ]
    "let helpList += [  "    hifn                  : open all lines containing any highlights on a new buffer" ]
    "let helpList += [  "    hisy                  : synchronize filter window data and position" ]
    "let helpList += [  "  Filter position         : " ]
    "let helpList += [  "    hip                   : synchcronize position" ]
    "let helpList += [  "    hips                  : synchonize position and switch window" ]
    "let helpList += [  "    hipsa                 : enable position auto synchonize" ]
    "let helpList += [  "    hipsn                 : disable position auto synchonize" ]
    "let helpList += [  "  Filter data             : " ]
    "let helpList += [  "    hids                  : sychcronize data changes" ]
    "let helpList += [  "    hidsa                 : enable data change auto synchonize" ]
    "let helpList += [  "    hidsn                 : disable data changes auto synchonize" ]
    "let helpList += [  " " ]
    "let helpList += [  "    Hiup                  : update main and filtered buffer contents" ]
    "let helpList += [  " " ]
    "let helpList += [  " Others" ]
    "let helpList += [  "    hir                   : refresh all highlightings" ]
    "let helpList += [  " " ]

    "let max = winheight(0) - 1
    "let n = 0
    "for helpLine in l:helpList
        "echo l:helpLine
        "if l:n >= l:max
            "" scroll screen
            "call input("(Press ENTER to continue)")
            "let n = 0
        "endif
        "let n += 1
    "endfor
    "call input("")
endfunction


" Create menu items for the specified modes.
function! highlightFilter#CreateMenus(modes, submenu, target, desc, cmd)
    " Build up a map command like
    let plug = a:target
    let plug_start = 'noremap <silent> ' . ' :call HighlightFilter("'
    let plug_end = '", "' . a:target . '")<cr>'

    " Build up a menu command like
    let menuRoot = get(['', 'HighlightFilter', '&HighlightFilter', "&Plugin.&HighlightFilter".a:submenu], 3, '')
    let menu_command = 'menu ' . l:menuRoot . '.' . escape(a:desc, ' ')

    if strlen(a:cmd)
        let menu_command .= '<Tab>' . a:cmd
    endif

    let menu_command .= ' ' . (strlen(a:cmd) ? plug : a:target)
    "let menu_command .= ' ' . (strlen(a:cmd) ? a:target)

    call s:Verbose(1,"CreateMenus",l:menu_command)

    " Execute the commands built above for each requested mode.
    for mode in (a:modes == '') ? [''] : split(a:modes, '\zs')
        if strlen(a:cmd)
            execute mode . plug_start . mode . plug_end
            call s:Verbose(1,"CreateMenus","execute ". mode . plug_start . mode . plug_end)
        endif
        " Check if the user wants the menu to be displayed.
        if g:HighlightFilter_Mode != 0
            execute mode . menu_command
        endif
    endfor
endfunction



"- initializations ------------------------------------------------------------

"autocmd! BufWinEnter *  :call s:AutoLoadColorHiglighting()
augroup HighlightFilter_
	autocmd!
    autocmd BufWinEnter *  :call s:AutoLoadColorHiglighting()
augroup END

let s:plugin = expand('<sfile>')
let s:plugin_path = expand('<sfile>:p:h')
let s:plugin_name = expand('<sfile>:t')

call s:Initialize()

