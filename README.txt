"--------------------------------------------------------------------
" Script Name: highlightFilter.vim
" Copyright:   (C) 2017-2019 Javier Puigdevall Garcia
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:  Javier Garcia Puigdevall <javierpuigdevall@gmail.com>
"--------------------------------------------------------------------

This little help will get you through the basic commands.

Open this readme file with your vi in order to show the highlight when applying each command.

Do not use copy paste when trying the commands, write it down on the command mode as most of the commads are abbreviations and
need to be expanded to its correspondent function.



Highilight abbreviations help. Very handy if you don't want to type the (long) full function name.
Command: hih 

Highlight help on color names:
Command: hicol all
Command: hicol
Command: hicol red
Command: hicol red green

Highlight help on color IDs:
Show all color IDs
Command: hiid all

Show all red color IDs
Command: hiid r

Show red, green and blue color IDs.
Command: hiid r g b

Show underlined color IDs:
Command: hiid _

Show bold color IDs:
Command: hiid !

Show color background IDs:
Command: hiid #

Highlignt color. Highlight pattern with color:
Command: Highlight word in green:
Command: hic word g

Highlignt color. Highlight "my text blue foreground"
Command: hic my\ text\ blue\ foreground b

Highlignt color. Highlight case sensitive(\C) lines containing word RED with red foreground color
Command: hic \CRED r*

Highlignt color. Highlight "This Sentence" background with yellow color.
Command: hic \CThis\ Sentence  y#

Highlignt color. Highlight all line cyan color, and underline it. Choose color from the command menu.
Command: hic underline\ it c_*

Highlight show. Show all highlightings done:
Command: hish

Hihglignt undo. Remove last highlight, will remove the cyan highlight.
Command: hiu

Highlight type. Show the saved highlight types:
Command: hit

Highlight save. Save current highlight configuration with name myConfig.
Command: hisv myConfig

Highlight type. Show the configurations saved again:
Command: hit

Highlight type. Clear all highlithts:
Command: hit 0

Highlight type. Apply the saved highlight:
Command: hit myConfig
Command: hit 1

Highlight filter. Open a split window with all lines with highlights:
Command: hif

Highlight filter. Open a split window with all lines containing red and green highlights:
Command: hif r g

Highlight filter. Open a split window with all lines containing background highlights:
Command: hif #

Highlight filter. Open a vertical split window with all lines with highlights:
Command: hifv

Highlight filter. Open a new tab with all lines with highlights:
Command: hivt

Highlight refresh. Show again the color highlighting when it desapeared.
Command: hir

Highlight orange word under cursor. 
Command: Leader+hw o

Highlight magenta complete word under cursor. 
Command: Leader+hW m

Highlight all line red(0), yelow(1), green(2), blue(3), magenta(4), cyan(5). 
Command red: Leader+h0
Command yelow: Leader+h1
Command green: Leader+h2
