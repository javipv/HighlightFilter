# HighlightFilter.vim

Highlight text patterns in different colors. 
Save, reload and modify the highlighting configuration.
Filter by color the lines and show then on a new split/tab.

<img src="https://raw.githubusercontent.com/javipv/HighlightFilter.vim/master/screenshot.png">

## Install

```
Pathogen:
```

```
git clone https://github.com/javipv/HighlightFilter.vim.git
```


## Basic usage

This little help will get you through the basic commands.

Open this readme file with your vi in order to show the highlight when applying each command.

Do not use copy paste when trying the commands, write it down on the command mode as most of the commads are abbreviations and
need to be expanded to its correspondent function.

Highilight abbreviations help. Very handy if you don't want to type the (long) full function name.
```
:hih 
```


Highlight help on color names:
Show the basic color highlight IDs.
```
:hiid
```

Show all color highlight names, shows plain, bold, underlined and background color names:
```
:hicol all
```

Show red colors' names.
```
:hicol red
```

Show green colors' names.
```
:hicol red green
```

Highlight help on color IDs:
Show the basic color highlight IDs.
```
:hiid
```

Show all color highlight IDs shows plain, bold, underlined and background color IDs:
```
:hiid all
```

Show all red color IDs
```
:hiid r
```

Show red, green and blue color IDs.
```
:hiid r g b
```

Show underlined color IDs:
```
:hiid _
```

Show bold color IDs:
```
:hiid !
```

Show color background IDs:
```
:hiid #
```

Highlignt color. Highlight pattern with color:
Highlight word in green:
```
:hic word g
```

Highlignt color. Highlight "my text blue foreground"
```
:hic my\ text\ blue\ foreground b
```

Highlignt color. Highlight case sensitive(\C) lines containing word RED with red foreground color
```
:hic \CRED r*
```

Highlignt color. Highlight "This Sentence" background with yellow color.
```
:hic \CThis\ Sentence  y#
```

Highlignt color. Highlight all line cyan color, and underline it. Choose color from the command menu.
```
:hic underline\ it c_*
```

Highlight show. Show all highlightings done:
```
:hish
```

Hihglignt undo. Remove last highlight, will remove the cyan highlight.
```
:hiu
```

Highlight type. Show the saved highlight types:
```
:hit
```

Highlight save. Save current highlight configuration with name myConfig.
```
:hisv myConfig
```

Highlight type. Show the configurations saved again:
```
:hit
```

Highlight type. Clear all highlithts:
```
:hit 0
```

Highlight type. Apply the saved highlight:
```
:hit myConfig
```
```
:hit 1
```

Highlight filter. Open a split window with all lines with highlights:
```
:hif
```

Highlight filter. Open a split window with all lines containing red and green highlights:
```
:hif r g
```

Highlight filter. Open a split window with all lines containing background highlights:
```
:hif #
```

Highlight filter. Open a vertical split window with all lines with highlights:
```
:hifv
```

Highlight filter. Open a new tab with all lines with highlights:
```
:hivt
```

Highlight refresh. Show again the color highlighting when it desapeared.
```
:hir
```

Highlight orange word under cursor. 
```
<Leader>hw o
```

Highlight magenta complete word under cursor. 
```
<Leader>hW m
```

Highlight all line red(0), yelow(1), green(2), blue(3), magenta(4), cyan(5). 
Highlight line red: 
```
Leader+h0
```

Highlight line yelow: 
```
<Leader>h1
```

Highlight line green: 
```
<Leader>h2
```

## Basic configuration

Save highlight configurations on this paths:
```
:let g:HighlightFilter_SourceFiles = ".highlightFilter.vim /home/MY_USER/.highlightFilter.vim"
```

Omitt confirmation and automatically save highlight config.
```
:let g:HighlightFilter_AutoSaveExtensions = "log txt"
```

Omitt confirmation and do not automatically save highlight config.
```
:let g:HighlightFilter_AutoSaveExcludeExt= "cpp h sh c vim xml"
```
```
:let g:HighlightFilter_AutosaveFiles =  ".highlightFilter.vim /home/MY_USER/.highlightFilter.vim"
```

Use ag or grep to show highlight filter split.
```
:let g:HighlightFilter_ExternalFilter = 1
```

Autofilter configuration active:
```
:let g:HighlightFilter_AutoFilt = 1
```

On this file types. Do not open filter split automatically.
```
:let g:HighlightFilter_AutoFiltNotExtensions = "cpp hpp h c"
```

On this file types. Open automatically the highlight filter split. 
```
:let g:HighlightFilter_AutoFiltExtensions    = "log txt"
```
