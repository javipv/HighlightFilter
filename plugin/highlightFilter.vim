" Script Name: highlightFilter.vim
 "Description: Highlight patterns in different colors. 
"   Allows to save, reload and modify the highlighting configuration.
"   Allows to filter by color the lines and show then on a new split/tab.
"
" Copyright:   (C) 2017-2018 Javier Puigdevall Garcia
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
"   http://github.com/guns/highlightFilter.vim
"
" Version:      1.0.0
" Changes:


if exists('g:loaded_highlightFilter')
    "finish
endif

if (!has("syntax"))
    echo "+syntax option required for highlighting."
    finish
endif

let g:loaded_highlightFilter = 1
let s:save_cpo = &cpo
set cpo&vim

let s:leader = exists('g:mapleader') ? g:mapleader : ''


"- configuration --------------------------------------------------------------

let g:HighlightFilter_TermColors             = get(g:, 'HighlightFilter_TermColors', 256)
let g:HighlightFilter_DfltAbbrev             = get(g:, 'HighlightFilter_DfltAbbrev', 1)
let g:HighlightFilter_AbbrevPrefix           = get(g:, 'HighlightFilter_AbbrevPrefix', "hi")


" Color highlight autosave options
let g:HighlightFilter_AutoSave               = get(g:, 'HighlightFilter_AutoSave', 1)
let g:HighlightFilter_AutoSaveConfirm        = get(g:, 'HighlightFilter_AutoSaveConfirm', 1)
let g:HighlightFilter_AutoSaveSourcePrefix   = get(g:, 'HighlightFilter_AutoSaveSourcePrefix', ".")
let g:HighlightFilter_AutoSaveSourceSufix    = get(g:, 'HighlightFilter_AutoSaveSourceSufix', "_highlightFilter.vim")
let g:HighlightFilter_AutoSaveExtensions     = get(g:, 'HighlightFilter_AutoSaveExtensions', "")
let g:HighlightFilter_AutoSaveExcludeExt     = get(g:, 'HighlightFilter_AutoSaveExcludeExt', "")
let g:HighlightFilter_Autoload               = get(g:, 'HighlightFilter_Autoload', 1) " Reload last configuration type used with current file

" Filter window configurations
let g:HighlightFilter_AgGrepFilter           = get(g:, 'HighlightFilter_AgGrepFilter', 1) " On 1 use ag/grep to filter the matching patterns
let g:HighlightFilter_AwkFilter              = get(g:, 'HighlightFilter_AwkFilter', 1) " On 1 use awk to filter the matching patterns
let g:HighlightFilter_FilterSplit            = get(g:, 'HighlightFilter_FilterSplit', "split")

let g:HighlightFilter_FiltSync               = get(g:, 'HighlightFilter_FiltSync', 1)
let g:HighlightFilter_AutoSyncFiltPos        = get(g:, 'HighlightFilter_AutoSyncFiltPos', 0)
let g:HighlightFilter_AutoSyncFiltData       = get(g:, 'HighlightFilter_AutoSyncFiltData', 0)

let g:HighlightFilter_AutoFilt               = get(g:, 'HighlightFilter_AutoFilt', 0)
let g:HighlightFilter_AutoFiltExtensions     = get(g:, 'HighlightFilter_AutoFiltExtensions', "")
let g:HighlightFilter_AutoFiltNotExtensions  = get(g:, 'HighlightFilter_AutoFiltNotExtensions', "")

let g:HighlightFilter_KeyPadMode               = get(g:, 'HighlightFilter_KeyPadMode', 0)

" Show config files
let g:HighlightFilter_CfgSplitNumb             = get(g:, 'HighlightFilter_CfgSplitNumb', 3)

" Block separation string
let g:HighlightFilter_BlockSeparator           = get(g:, 'HighlightFilter_BlockSeparator', ">>")
let g:HighlightFilter_BlockRemoveLine          = get(g:, 'HighlightFilter_BlockSeparator', "!!")
let g:HighlightFilter_BlockRemoveLineAddNL     = get(g:, 'HighlightFilter_BlockRemoveLineAddNL', "!?")

" Gui menu
let g:HighlightFilter_Mode                     = get(g:, 'HighlightFilter_Mode', 3)

" Conceal ANSI Esc Sequnce characters
let g:HighlightFilter_ConcealAnsiEscSeq        = get(g:, 'HighlightFilter_ConcealAnsiEscSeq', 1)


"- commands -------------------------------------------------------------------

command! -nargs=? HighlightColorRemove                                                       call highlightFilter#RmColor(<q-args>)
command! -nargs=? -complete=customlist,highlightFilter#ConfigTypesWildmenu HighlightSaveCfg  call highlightFilter#SaveCurrentHighlightCfg(<q-args>)
command! -nargs=0 HighlightShow                                                              call highlightFilter#ShowCurrentHighlightCfg()
command! -nargs=0 HighlightRemove                                                            call highlightFilter#RmPattern()
command! -nargs=0 HighlightUndo                                                              call highlightFilter#RmLastPattern()
command! -range -nargs=* -complete=customlist,highlightFilter#ColorsIDWildmenu HighlightPattern   call highlightFilter#PatternColorize(<f-args>)
command! -range -nargs=* HighlightPatternHelp                                                 call highlightFilter#PatternColorHelp(<f-args>)
command! -nargs=? -complete=customlist,highlightFilter#ConfigTypesWildmenu HighlightShowTypes call highlightFilter#ShowConfigType(<q-args>)
command! -nargs=? -complete=customlist,highlightFilter#ConfigTypesWildmenu HighlightLoadType  call highlightFilter#LoadConfigType(<q-args>)
command! -nargs=? -complete=customlist,highlightFilter#ConfigTypesWildmenu HighlightLoadTypeFilter  call highlightFilter#LoadConfigTypeFilter(<q-args>)
command! -nargs=? -complete=customlist,highlightFilter#ConfigTypesWildmenu HighlightLoadTypes call highlightFilter#LoadConfigTypes(<q-args>)
command! -nargs=0 HighlightLoadLastType                                                      call highlightFilter#LastType()
command! -nargs=0 HighlightListTypes                                                         call highlightFilter#TypeShow()
command! -nargs=* HighlightColorSearch                                                       call highlightFilter#ColorSearch("noconfirm",<q-args>)
command! -nargs=* HighlightOpenFilter                                                        call highlightFilter#ColorFilter(g:HighlightFilter_FilterSplit, <q-args>)
command! -nargs=* HighlightFilterSp                                                          call highlightFilter#ColorFilter("new",  <q-args>)
command! -nargs=* HighlightFilterVsp                                                         call highlightFilter#ColorFilter("vnew",   <q-args>)
command! -nargs=* HighlightFilterTab                                                         call highlightFilter#ColorFilter("tabnew", <q-args>)
command! -nargs=* HighlightFilterNew                                                         call highlightFilter#ColorFilter("enew",   <q-args>)
"command! -nargs=* NHighlightFilter                                                           call highlightFilter#ColorFilter("bdelete",<q-args>)
command! -nargs=* HighlightHelpColors                                                        call highlightFilter#ColorHelp(<q-args>)
command! -nargs=* HighlightHelpColorId                                                       call highlightFilter#ColorIdHelp(<q-args>)
command! -nargs=0 HighlightShowCfg                                                           call highlightFilter#OpenConfig()
command! -nargs=* -complete=customlist,highlightFilter#UsedColorsWildmenu   HighlightFold     call highlightFilter#HighlightFoldPatterns(<q-args>)
command! -nargs=* -complete=customlist,highlightFilter#UsedPatternsWildmenu HighlightFold     call highlightFilter#HighlightFoldPatterns(<q-args>)
command! -nargs=0 HighlightFoldSh                                                            call highlightFilter#HighlightShowFoldExpr()
command! -nargs=0 HighlightForceSave                                                         call highlightFilter#ForceAutoSaveColorHiglighting()
command! -nargs=* HighlightSyncPos                                                           call highlightFilter#SyncWindowPosition(<q-args>)
command! -nargs=* HighlightSwitchSyncPos                                                     call highlightFilter#SyncSwitchWindowPosition(<q-args>)
command! -nargs=* HighlightSyncData                                                          call highlightFilter#SyncFiltWindowData(<q-args>)
command! -nargs=* HighlightFiltSync                                                          call highlightFilter#AutoSyncFiltWindowCfg(<q-args>)
command! -nargs=0 HighlightRefresh                                                           call highlightFilter#Refresh()
command! -nargs=1 HighlightVerbose                                                           call highlightFilter#Verbose(<f-args>)

command! -nargs=0 HighlightWord                                                              call highlightFilter#HighlightWord()
command! -nargs=0 HighlightWholeWord                                                         call highlightFilter#HighlightWholeWord()
command! -nargs=1 HighlightLine                                                              call highlightFilter#HighlightLine(<f-args>)
command! -nargs=0 HighlightShowPatterns                                                      call highlightFilter#ShowPatterns()


"- mappings -------------------------------------------------------------------

if !hasmapto('HighlightPattern', 'n')
    " Highlight word
    nmap <unique> <leader>hw :HighlightPattern \\C<C-R>=escape(expand('<cword>'),' \')<CR> 
    nmap <unique> <leader>hW :HighlightPattern \\C<C-R>=escape(expand('<cWORD>'),' \')<CR> 

    " Highlight line
    nmap <unique> <leader>hl :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR> 
    " Highlight line background in red color
    nmap <unique> <leader>h0 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  r#<CR>
    " Highlight line background in yellow color
    nmap <unique> <leader>h1 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  y#<CR>
    " Highlight line background in green color
    nmap <unique> <leader>h2 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  g#<CR>
    " Highlight line background in blue color
    nmap <unique> <leader>h3 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  b#<CR>
    " Highlight line background in magenta color
    nmap <unique> <leader>h4 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  m#<CR>
    " Highlight line background in cyan color
    nmap <unique> <leader>h5 :HighlightPattern \\C<C-R>=escape(getline('.'),' \')<CR>  c#<CR>

    if has("gui_running") 
        call highlightFilter#CreateMenus('n' , '' , ":HighlightWord<CR>"      , 'highlight word under cursor'       , s:leader.'hw')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightWholeWord<CR>' , 'highlight whole word under cursor' , s:leader.'hW')
        call highlightFilter#CreateMenus('n' , '' , ':'                       , '-Sep-'                             , '')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine r#<CR>'   , 'highlight line red'                , s:leader.'h0')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine y#<CR>'   , 'highlight line yellow'             , s:leader.'h1')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine g#<CR>'   , 'highlight line green'              , s:leader.'h2')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine b#<CR>'   , 'highlight line blue'               , s:leader.'h3')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine m#<CR>'   , 'highlight line magenta'            , s:leader.'h4')
        call highlightFilter#CreateMenus('n' , '' , ':HighlightLine c#<CR>'   , 'highlight line cyan'               , s:leader.'h5')
    endif
endif

if !hasmapto('HighlightOpenFilter', 'n')
    nmap <unique> <leader>hf :HighlightOpenFilter<CR>

    if has("gui_running") 
        call highlightFilter#CreateMenus('n' , '' , ':'                          , '-Sep2-'                                   , '')
        call highlightFilter#CreateMenus('n' , '' , 'HighlightOpenFilter<CR>'        , 'open filter window'              , s:leader.'hf')
    endif
endif

if !hasmapto('HighlightSwitchSyncPos', 'n')
    nmap <unique> <leader>hp :HighlightSyncPos<CR>
    nmap <unique> <leader>hP :HighlightSwitchSyncPos<CR>

    if has("gui_running") 
        call highlightFilter#CreateMenus('n' , '' , 'HighlightSyncPos<CR>'       , 'synchonize filter position'               , s:leader.'hp')
        call highlightFilter#CreateMenus('n' , '' , 'HighlightSwitchSyncPos<CR>' , 'synchonize filter position switch window' , s:leader.'hP')
    endif
endif

if !hasmapto('HighlightSyncData', 'n')
    nmap <unique> <leader>hd :HighlightSyncData<CR>

    if has("gui_running") 
        call highlightFilter#CreateMenus('n', '', 'HighlightSyncData<CR>', 'synchonize filter data changes' , s:leader.'hd')
    endif
endif

if !hasmapto('HighlightRefresh', 'n')
    nmap <unique> <leader>hr  :HighlightRefresh<CR>

    if has("gui_running") 
        call highlightFilter#CreateMenus('n', '',   ':',          '-Sep3-', '')
        call highlightFilter#CreateMenus('n', '', 'HighlightRefresh<CR>', 'refresh highlighting' , s:leader.'hr')
    endif
endif

if !hasmapto('HighlightPattern', 'v')
    " Highlight visual selected text:
    vmap <leader>h  :<BS><BS><BS><BS><BS>HighlightPattern \\C<C-R>=highlightFilter#getVisualSel()<CR>  

    if has("gui_running") 
        call highlightFilter#CreateMenus('v' , '', 'HighlightVisual<CR>', 'highlight selection', 'h')
    endif
endif


"- abbreviations -------------------------------------------------------------------

if g:HighlightFilter_DfltAbbrev == 1
    " Highlight config save/load/show
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."t     HighlightLoadType"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."tf    HighlightLoadTypeFilter"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."ts    HighlightLoadTypes"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."tl    HighlightLoadLastType<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."cfg   HighlightShowCfg<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."sv    HighlightSaveCfg"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."fsv   HighlightForceSave<CR>"

    " Highlight color help
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."col   HighlightHelpColors"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."id    HighlightHelpColorId"

    " Highlight pattern
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."c     HighlightPattern"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."ch    HighlightPatternHelp"
    "exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."b     HighlightBlock"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."rm    HighlightRemove<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."u     HighlightUndo<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."sh    HighlightShow"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."shp   HighlightShowPatterns"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."crm   HighlightColorRemove"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."cs    HighlightColorSearch"

    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."fold   HighlightFold "
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."foldsh HighlightFoldSh<CR>"

    " Open filter window
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."f     HighlightOpenFilter "
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."fs    HighlightFilterSp"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."fv    HighlightFilterVsp"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."ft    HighlightFilterTab"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."fn    HighlightFilterNew"
    "cnoreabbrev nhif    HighlightFilterNone

    " Synchronize filter window position
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."ps    HighlightSwitchSyncPos<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."psa   HighlightSwitchSyncPos auto<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."psn   HighlightSwitchSyncPos noauto<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."p     HighlightSyncPos<CR>"

    " Synchronize filter window data
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."d     HighlightSyncData"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."ds    HighlightSyncData"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."dsa   HighlightSyncData auto<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."dsn   HighlightSyncData noauto<CR>"

    " Synchronize filter window data and position
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."sy    HighlightFiltSync"

    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."r     HighlightRefresh<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."R     tabdo windo HighlightRefresh<CR>"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."rf    HighlightRefresh<CR>:HighlightOpenFilter"
    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."rs    HighlightRefresh<CR>:HighlightFiltSync<CR>"

    "exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."up    wincmd k \\| e \\| HighlightSyncData \\| HighlightRefresh<CR>"

    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."v     HighlightVerbose"

    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."h     call highlightFilter#Help()<CR>"

    exec "cnoreabbrev ".g:HighlightFilter_AbbrevPrefix."up    call highlightFilter#Update()<CR>"
endif


if has("gui_running") && g:svnTools_dfltAbbrev == 1
    call highlightFilter#CreateMenus('n'  , ''               , ':'                                  , '-Sep4-'                                , '')
    call highlightFilter#CreateMenus('cn' , '.&Config\ type' , ':HighlightLoadType'                 , 'load highlight type'                   , ":".g:HighlightFilter_AbbrevPrefix."t")
    call highlightFilter#CreateMenus('cn' , '.&Config\ type' , ':HighlightLoadTypeFilter'           , 'load highlight type and filter'        , ":".g:HighlightFilter_AbbrevPrefix."tf")
    call highlightFilter#CreateMenus('cn' , '.&Config\ type' , ':HighlightShowCfg<CR>'              , 'show highlight types'                  , ":".g:HighlightFilter_AbbrevPrefix."cfg")
    call highlightFilter#CreateMenus('cn' , '.&Config\ type' , ':HighlightSaveCfg'                  , 'save highlight type'                   , ":".g:HighlightFilter_AbbrevPrefix."sv")
    call highlightFilter#CreateMenus('cn' , '.&Config\ type' , ':HighlightForceSave'                , 'force save highlight type'             , ":".g:HighlightFilter_AbbrevPrefix."fsv")
    call highlightFilter#CreateMenus('cn' , '.&Color\ help'  , ':HighlightHelpColors'               , 'highlight color help'                  , ":".g:HighlightFilter_AbbrevPrefix."col")
    call highlightFilter#CreateMenus('cn' , '.&Color\ help'  , ':HighlightHelpColorId'              , 'highlight color ID help'               , ":".g:HighlightFilter_AbbrevPrefix."id")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightPattern'                  , 'apply color highlight'                 , ":".g:HighlightFilter_AbbrevPrefix."c")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightRemove'                   , 'remove all highlights'                 , ":".g:HighlightFilter_AbbrevPrefix."rm")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightUndo'                     , 'undo last highlight'                   , ":".g:HighlightFilter_AbbrevPrefix."u")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightShow'                     , 'show current file highlight config'    , ":".g:HighlightFilter_AbbrevPrefix."sh")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightShowPatterns'             , 'show current file highlight patterns'    , ":".g:HighlightFilter_AbbrevPrefix."shp")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightRemove'                   , 'highlight color remove'                , ":".g:HighlightFilter_AbbrevPrefix."crm")
    call highlightFilter#CreateMenus('cn' , '.&Edit'         , ':HighlightSearch'                   , 'highlight color search'                , ":".g:HighlightFilter_AbbrevPrefix."cs")
    call highlightFilter#CreateMenus('cn' , '.&Folding'      , ':HighlightFold'                     , 'perform fold'                          , ":".g:HighlightFilter_AbbrevPrefix."fold")
    call highlightFilter#CreateMenus('cn' , '.&Folding'      , ':HighlightFoldSh<CR>'               , 'show folding patterns'                 , ":".g:HighlightFilter_AbbrevPrefix."foldsh")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightOpenFilter'                   , 'open highlights on a new split'        , ":".g:HighlightFilter_AbbrevPrefix."f")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightFilterSp'                 , 'open highlights on a new hsplit'       , ":".g:HighlightFilter_AbbrevPrefix."fs")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightFilterVsp'                , 'open highlights on a new vsplit'       , ":".g:HighlightFilter_AbbrevPrefix."fv")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightFilterTab'                , 'open highlights on a new tab'          , ":".g:HighlightFilter_AbbrevPrefix."ft")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightFilterNew'                , 'open highlights on a new buffer'       , ":".g:HighlightFilter_AbbrevPrefix."fn")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':'                                  , '-Sep-'                                 , '')
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightFiltSync<CR>'             , 'synchronize filter data and position'  , ":".g:HighlightFilter_AbbrevPrefix."y")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':'                                  , '-Sep2-'                                , '')
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSyncPos<CR>'              , 'synchcronize position'                 , ":".g:HighlightFilter_AbbrevPrefix."p")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSwitchSyncPos<CR>'        , 'synchonize position and switch window' , ":".g:HighlightFilter_AbbrevPrefix."ps")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSwitchSyncPos auto<CR>'   , 'enable position auto synchonize'       , ":".g:HighlightFilter_AbbrevPrefix."psa")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSwitchSyncPos noauto<CR>' , 'disable position auto synchonize'      , ":".g:HighlightFilter_AbbrevPrefix."psn")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':'                                  , '-Sep3-'                                , '')
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSyncData<CR>'             , 'sychcronize data changes'              , ":".g:HighlightFilter_AbbrevPrefix."ds")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSyncData auto<CR>'        , 'enable data change auto synchonize'    , ":".g:HighlightFilter_AbbrevPrefix."dsa")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':HighlightSyncData noauto<CR>'      , 'disable data changes auto synchonize'  , ":".g:HighlightFilter_AbbrevPrefix."dsn")
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':'                                  , '-Sep4-'                                , '')
    call highlightFilter#CreateMenus('cn' , '.&Filter'       , ':Hiup<CR>'      , 'update main and filtered buffer contents'  , ":".g:HighlightFilter_AbbrevPrefix."up")
    call highlightFilter#CreateMenus('cn' , '.&Refresh'      , ':HighlightRefresh<CR>'              , 'highlight refresh'                     , ":".g:HighlightFilter_AbbrevPrefix."r")
    call highlightFilter#CreateMenus('cn' , '.&Refresh'      , ':tabdo window HighlightRefresh<CR>' , 'highlight refresh all'                 , ":".g:HighlightFilter_AbbrevPrefix."R")
    call highlightFilter#CreateMenus('cn' , '.&Refresh'      , ':HighlightRefresh<CR>:HighlightOpenFilter', 'highlight refresh and open filter'   , ":".g:HighlightFilter_AbbrevPrefix."rf")
    call highlightFilter#CreateMenus('cn' , '.&Refresh'      , ':HighlightRefresh<CR>:HighlightFiltSync<CR>', 'highlight refresh and sync filter', ":".g:HighlightFilter_AbbrevPrefix."rs")
endif


let &cpo = s:save_cpo
unlet s:save_cpo
