" Script Name: highlightFilter.vim
 "Description: Color configuration for highlightFilter plugin.
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
"
" Version:      1.0.0
" Changes:


if has("gui_running")
    echom "HighlightMatch Gui config"

    highlight! HighlightFilter_ColorN gui=none guibg=bg guifg=fg
    highlight! HighlightFilter_ColorW1 gui=none guibg=bg guifg=snow
    highlight! HighlightFilter_ColorW2 gui=none guibg=bg guifg=WhiteSmoke
    highlight! HighlightFilter_ColorW3 gui=none guibg=bg guifg=FloralWhite
    highlight! HighlightFilter_ColorW4 gui=none guibg=bg guifg=OldLace
    highlight! HighlightFilter_ColorW5 gui=none guibg=bg guifg=linen
    highlight! HighlightFilter_ColorW7 gui=none guibg=bg guifg=AntiqueWhite
    highlight! HighlightFilter_ColorW gui=none guibg=bg guifg=white
    highlight! HighlightFilter_ColorY1 gui=none guibg=bg guifg=khaki
    highlight! HighlightFilter_ColorY2 gui=none guibg=bg guifg=PaleGoldenrod
    highlight! HighlightFilter_ColorY gui=none guibg=bg guifg=yellow
    highlight! HighlightFilter_ColorY3 gui=none guibg=bg guifg=gold
    highlight! HighlightFilter_ColorY4 gui=none guibg=bg guifg=LightGoldenrod
    highlight! HighlightFilter_ColorY5 gui=none guibg=bg guifg=goldenrod
    highlight! HighlightFilter_ColorY6 gui=none guibg=bg guifg=DarkGoldenrod
    highlight! HighlightFilter_ColorG1 gui=none guibg=bg guifg=DarkGreen
    highlight! HighlightFilter_ColorG2 gui=none guibg=bg guifg=SeaGreen
    highlight! HighlightFilter_ColorG3 gui=none guibg=bg guifg=MediumSeaGreen
    highlight! HighlightFilter_ColorG4 gui=none guibg=bg guifg=PaleGreen
    highlight! HighlightFilter_ColorG5 gui=none guibg=bg guifg=SpringGreen
    highlight! HighlightFilter_ColorG6 gui=none guibg=bg guifg=LawnGreen
    highlight! HighlightFilter_ColorG gui=none guibg=bg guifg=green
    highlight! HighlightFilter_ColorB1 gui=none guibg=bg guifg=NavyBlue
    highlight! HighlightFilter_ColorB2 gui=none guibg=bg guifg=RoyalBlue
    highlight! HighlightFilter_ColorB gui=none guibg=bg guifg=blue
    highlight! HighlightFilter_ColorB3 gui=none guibg=bg guifg=DodgerBlue
    highlight! HighlightFilter_ColorB4 gui=none guibg=bg guifg=DeepSkyBlue
    highlight! HighlightFilter_ColorB5 gui=none guibg=bg guifg=skyBlue
    highlight! HighlightFilter_ColorB6 gui=none guibg=bg guifg=SteelBlue
    highlight! HighlightFilter_ColorM gui=none guibg=bg guifg=magenta
    highlight! HighlightFilter_ColorM1 gui=none guibg=bg guifg=orchid
    highlight! HighlightFilter_ColorM2 gui=none guibg=bg guifg=MediumOrchid
    highlight! HighlightFilter_ColorM3 gui=none guibg=bg guifg=DarkOrchid
    highlight! HighlightFilter_ColorM5 gui=none guibg=bg guifg=purple
    highlight! HighlightFilter_ColorM6 gui=none guibg=bg guifg=MediumPurple
    highlight! HighlightFilter_ColorC1 gui=none guibg=bg guifg=PaleTurquoise
    highlight! HighlightFilter_ColorC2 gui=none guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC3 gui=none guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC4 gui=none guibg=bg guifg=MediumTurquoise
    highlight! HighlightFilter_ColorC5 gui=none guibg=bg guifg=turquoise
    highlight! HighlightFilter_ColorC gui=none guibg=bg guifg=cyan
    highlight! HighlightFilter_ColorC6 gui=none guibg=bg guifg=aquamarine
    highlight! HighlightFilter_ColorV1 gui=none guibg=bg guifg=PaleVioletRed
    highlight! HighlightFilter_ColorV2 gui=none guibg=bg guifg=VioletRed
    highlight! HighlightFilter_ColorV3 gui=none guibg=bg guifg=HotPink
    highlight! HighlightFilter_ColorV4 gui=none guibg=bg guifg=DeepPink
    highlight! HighlightFilter_ColorV gui=none guibg=bg guifg=violet
    highlight! HighlightFilter_ColorV5 gui=none guibg=bg guifg=DarkViolet
    highlight! HighlightFilter_ColorV6 gui=none guibg=bg guifg=BlueViolet
    highlight! HighlightFilter_ColorO1 gui=none guibg=bg guifg=DarkSalmon
    highlight! HighlightFilter_ColorO2 gui=none guibg=bg guifg=salmon
    highlight! HighlightFilter_ColorO3 gui=none guibg=bg guifg=LightSalmon
    highlight! HighlightFilter_ColorO gui=none guibg=bg guifg=orange
    highlight! HighlightFilter_ColorO4 gui=none guibg=bg guifg=DarkOrange
    highlight! HighlightFilter_ColorO5 gui=none guibg=bg guifg=coral
    highlight! HighlightFilter_ColorO6 gui=none guibg=bg guifg=LightCoral
    highlight! HighlightFilter_ColorR1 gui=none guibg=bg guifg=IndianRed
    highlight! HighlightFilter_ColorR2 gui=none guibg=bg guifg=firebrick
    highlight! HighlightFilter_ColorR3 gui=none guibg=bg guifg=tomato
    highlight! HighlightFilter_ColorR4 gui=none guibg=bg guifg=OrangeRed
    highlight! HighlightFilter_ColorR gui=none guibg=bg guifg=red
    highlight! HighlightFilter_ColorR5 gui=none guibg=bg guifg=DarkRed
    highlight! HighlightFilter_ColorR6 gui=none guibg=bg guifg=maroon
    highlight! HighlightFilter_ColorBR1 gui=none guibg=bg guifg=RosyBrown
    highlight! HighlightFilter_ColorBR2 gui=none guibg=bg guifg=SaddleBrown
    highlight! HighlightFilter_ColorBR3 gui=none guibg=bg guifg=sienna
    highlight! HighlightFilter_ColorBR4 gui=none guibg=bg guifg=peru
    highlight! HighlightFilter_ColorBR gui=none guibg=bg guifg=burlywood
    highlight! HighlightFilter_ColorBR5 gui=none guibg=bg guifg=SandyBrown
    highlight! HighlightFilter_ColorBR6 gui=none guibg=bg guifg=chocolate
    highlight! HighlightFilter_ColorNB gui=bold guibg=bg guifg=fg
    highlight! HighlightFilter_ColorW1B gui=bold guibg=bg guifg=snow
    highlight! HighlightFilter_ColorW2B gui=bold guibg=bg guifg=WhiteSmoke
    highlight! HighlightFilter_ColorW3B gui=bold guibg=bg guifg=FloralWhite
    highlight! HighlightFilter_ColorW4B gui=bold guibg=bg guifg=OldLace
    highlight! HighlightFilter_ColorW5B gui=bold guibg=bg guifg=linen
    highlight! HighlightFilter_ColorW7B gui=bold guibg=bg guifg=AntiqueWhite
    highlight! HighlightFilter_ColorWB gui=bold guibg=bg guifg=white
    highlight! HighlightFilter_ColorY1B gui=bold guibg=bg guifg=khaki
    highlight! HighlightFilter_ColorY2B gui=bold guibg=bg guifg=PaleGoldenrod
    highlight! HighlightFilter_ColorYB gui=bold guibg=bg guifg=yellow
    highlight! HighlightFilter_ColorY3B gui=bold guibg=bg guifg=gold
    highlight! HighlightFilter_ColorY4B gui=bold guibg=bg guifg=LightGoldenrod
    highlight! HighlightFilter_ColorY5B gui=bold guibg=bg guifg=goldenrod
    highlight! HighlightFilter_ColorY6B gui=bold guibg=bg guifg=DarkGoldenrod
    highlight! HighlightFilter_ColorG1B gui=bold guibg=bg guifg=DarkGreen
    highlight! HighlightFilter_ColorG2B gui=bold guibg=bg guifg=SeaGreen
    highlight! HighlightFilter_ColorG3B gui=bold guibg=bg guifg=MediumSeaGreen
    highlight! HighlightFilter_ColorG4B gui=bold guibg=bg guifg=PaleGreen
    highlight! HighlightFilter_ColorG5B gui=bold guibg=bg guifg=SpringGreen
    highlight! HighlightFilter_ColorG6B gui=bold guibg=bg guifg=LawnGreen
    highlight! HighlightFilter_ColorGB gui=bold guibg=bg guifg=green
    highlight! HighlightFilter_ColorB1B gui=bold guibg=bg guifg=NavyBlue
    highlight! HighlightFilter_ColorB2B gui=bold guibg=bg guifg=RoyalBlue
    highlight! HighlightFilter_ColorBB gui=bold guibg=bg guifg=blue
    highlight! HighlightFilter_ColorB3B gui=bold guibg=bg guifg=DodgerBlue
    highlight! HighlightFilter_ColorB4B gui=bold guibg=bg guifg=DeepSkyBlue
    highlight! HighlightFilter_ColorB5B gui=bold guibg=bg guifg=skyBlue
    highlight! HighlightFilter_ColorB6B gui=bold guibg=bg guifg=SteelBlue
    highlight! HighlightFilter_ColorMB gui=bold guibg=bg guifg=magenta
    highlight! HighlightFilter_ColorM1B gui=bold guibg=bg guifg=orchid
    highlight! HighlightFilter_ColorM2B gui=bold guibg=bg guifg=MediumOrchid
    highlight! HighlightFilter_ColorM3B gui=bold guibg=bg guifg=DarkOrchid
    highlight! HighlightFilter_ColorM5B gui=bold guibg=bg guifg=purple
    highlight! HighlightFilter_ColorM6B gui=bold guibg=bg guifg=MediumPurple
    highlight! HighlightFilter_ColorC1B gui=bold guibg=bg guifg=PaleTurquoise
    highlight! HighlightFilter_ColorC2B gui=bold guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC3B gui=bold guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC4B gui=bold guibg=bg guifg=MediumTurquoise
    highlight! HighlightFilter_ColorC5B gui=bold guibg=bg guifg=turquoise
    highlight! HighlightFilter_ColorCB gui=bold guibg=bg guifg=cyan
    highlight! HighlightFilter_ColorC6B gui=bold guibg=bg guifg=aquamarine
    highlight! HighlightFilter_ColorV1B gui=bold guibg=bg guifg=PaleVioletRed
    highlight! HighlightFilter_ColorV2B gui=bold guibg=bg guifg=VioletRed
    highlight! HighlightFilter_ColorV3B gui=bold guibg=bg guifg=HotPink
    highlight! HighlightFilter_ColorV4B gui=bold guibg=bg guifg=DeepPink
    highlight! HighlightFilter_ColorVB gui=bold guibg=bg guifg=violet
    highlight! HighlightFilter_ColorV5B gui=bold guibg=bg guifg=DarkViolet
    highlight! HighlightFilter_ColorV6B gui=bold guibg=bg guifg=BlueViolet
    highlight! HighlightFilter_ColorO1B gui=bold guibg=bg guifg=DarkSalmon
    highlight! HighlightFilter_ColorO2B gui=bold guibg=bg guifg=salmon
    highlight! HighlightFilter_ColorO3B gui=bold guibg=bg guifg=LightSalmon
    highlight! HighlightFilter_ColorOB gui=bold guibg=bg guifg=orange
    highlight! HighlightFilter_ColorO4B gui=bold guibg=bg guifg=DarkOrange
    highlight! HighlightFilter_ColorO5B gui=bold guibg=bg guifg=coral
    highlight! HighlightFilter_ColorO6B gui=bold guibg=bg guifg=LightCoral
    highlight! HighlightFilter_ColorR1B gui=bold guibg=bg guifg=IndianRed
    highlight! HighlightFilter_ColorR2B gui=bold guibg=bg guifg=firebrick
    highlight! HighlightFilter_ColorR3B gui=bold guibg=bg guifg=tomato
    highlight! HighlightFilter_ColorR4B gui=bold guibg=bg guifg=OrangeRed
    highlight! HighlightFilter_ColorRB gui=bold guibg=bg guifg=red
    highlight! HighlightFilter_ColorR5B gui=bold guibg=bg guifg=DarkRed
    highlight! HighlightFilter_ColorR6B gui=bold guibg=bg guifg=maroon
    highlight! HighlightFilter_ColorBR1B gui=bold guibg=bg guifg=RosyBrown
    highlight! HighlightFilter_ColorBR2B gui=bold guibg=bg guifg=SaddleBrown
    highlight! HighlightFilter_ColorBR3B gui=bold guibg=bg guifg=sienna
    highlight! HighlightFilter_ColorBR4B gui=bold guibg=bg guifg=peru
    highlight! HighlightFilter_ColorBRB gui=bold guibg=bg guifg=burlywood
    highlight! HighlightFilter_ColorBR5B gui=bold guibg=bg guifg=SandyBrown
    highlight! HighlightFilter_ColorBR6B gui=bold guibg=bg guifg=chocolate
    highlight! HighlightFilter_ColorNU gui=underline guibg=bg guifg=fg
    highlight! HighlightFilter_ColorW1U gui=underline guibg=bg guifg=snow
    highlight! HighlightFilter_ColorW2U gui=underline guibg=bg guifg=WhiteSmoke
    highlight! HighlightFilter_ColorW3U gui=underline guibg=bg guifg=FloralWhite
    highlight! HighlightFilter_ColorW4U gui=underline guibg=bg guifg=OldLace
    highlight! HighlightFilter_ColorW5U gui=underline guibg=bg guifg=linen
    highlight! HighlightFilter_ColorW7U gui=underline guibg=bg guifg=AntiqueWhite
    highlight! HighlightFilter_ColorWU gui=underline guibg=bg guifg=white
    highlight! HighlightFilter_ColorY1U gui=underline guibg=bg guifg=khaki
    highlight! HighlightFilter_ColorY2U gui=underline guibg=bg guifg=PaleGoldenrod
    highlight! HighlightFilter_ColorYU gui=underline guibg=bg guifg=yellow
    highlight! HighlightFilter_ColorY3U gui=underline guibg=bg guifg=gold
    highlight! HighlightFilter_ColorY4U gui=underline guibg=bg guifg=LightGoldenrod
    highlight! HighlightFilter_ColorY5U gui=underline guibg=bg guifg=goldenrod
    highlight! HighlightFilter_ColorY6U gui=underline guibg=bg guifg=DarkGoldenrod
    highlight! HighlightFilter_ColorG1U gui=underline guibg=bg guifg=DarkGreen
    highlight! HighlightFilter_ColorG2U gui=underline guibg=bg guifg=SeaGreen
    highlight! HighlightFilter_ColorG3U gui=underline guibg=bg guifg=MediumSeaGreen
    highlight! HighlightFilter_ColorG4U gui=underline guibg=bg guifg=PaleGreen
    highlight! HighlightFilter_ColorG5U gui=underline guibg=bg guifg=SpringGreen
    highlight! HighlightFilter_ColorG6U gui=underline guibg=bg guifg=LawnGreen
    highlight! HighlightFilter_ColorGU gui=underline guibg=bg guifg=green
    highlight! HighlightFilter_ColorB1U gui=underline guibg=bg guifg=NavyBlue
    highlight! HighlightFilter_ColorB2U gui=underline guibg=bg guifg=RoyalBlue
    highlight! HighlightFilter_ColorBU gui=underline guibg=bg guifg=blue
    highlight! HighlightFilter_ColorB3U gui=underline guibg=bg guifg=DodgerBlue
    highlight! HighlightFilter_ColorB4U gui=underline guibg=bg guifg=DeepSkyBlue
    highlight! HighlightFilter_ColorB5U gui=underline guibg=bg guifg=skyBlue
    highlight! HighlightFilter_ColorB6U gui=underline guibg=bg guifg=SteelBlue
    highlight! HighlightFilter_ColorMU gui=underline guibg=bg guifg=magenta
    highlight! HighlightFilter_ColorM1U gui=underline guibg=bg guifg=orchid
    highlight! HighlightFilter_ColorM2U gui=underline guibg=bg guifg=MediumOrchid
    highlight! HighlightFilter_ColorM3U gui=underline guibg=bg guifg=DarkOrchid
    highlight! HighlightFilter_ColorM5U gui=underline guibg=bg guifg=purple
    highlight! HighlightFilter_ColorM6U gui=underline guibg=bg guifg=MediumPurple
    highlight! HighlightFilter_ColorC1U gui=underline guibg=bg guifg=PaleTurquoise
    highlight! HighlightFilter_ColorC2U gui=underline guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC3U gui=underline guibg=bg guifg=DarkTurquoise
    highlight! HighlightFilter_ColorC4U gui=underline guibg=bg guifg=MediumTurquoise
    highlight! HighlightFilter_ColorC5U gui=underline guibg=bg guifg=turquoise
    highlight! HighlightFilter_ColorCU gui=underline guibg=bg guifg=cyan
    highlight! HighlightFilter_ColorC6U gui=underline guibg=bg guifg=aquamarine
    highlight! HighlightFilter_ColorV1U gui=underline guibg=bg guifg=PaleVioletRed
    highlight! HighlightFilter_ColorV2U gui=underline guibg=bg guifg=VioletRed
    highlight! HighlightFilter_ColorV3U gui=underline guibg=bg guifg=HotPink
    highlight! HighlightFilter_ColorV4U gui=underline guibg=bg guifg=DeepPink
    highlight! HighlightFilter_ColorVU gui=underline guibg=bg guifg=violet
    highlight! HighlightFilter_ColorV5U gui=underline guibg=bg guifg=DarkViolet
    highlight! HighlightFilter_ColorV6U gui=underline guibg=bg guifg=BlueViolet
    highlight! HighlightFilter_ColorO1U gui=underline guibg=bg guifg=DarkSalmon
    highlight! HighlightFilter_ColorO2U gui=underline guibg=bg guifg=salmon
    highlight! HighlightFilter_ColorO3U gui=underline guibg=bg guifg=LightSalmon
    highlight! HighlightFilter_ColorOU gui=underline guibg=bg guifg=orange
    highlight! HighlightFilter_ColorO4U gui=underline guibg=bg guifg=DarkOrange
    highlight! HighlightFilter_ColorO5U gui=underline guibg=bg guifg=coral
    highlight! HighlightFilter_ColorO6U gui=underline guibg=bg guifg=LightCoral
    highlight! HighlightFilter_ColorR1U gui=underline guibg=bg guifg=IndianRed
    highlight! HighlightFilter_ColorR2U gui=underline guibg=bg guifg=firebrick
    highlight! HighlightFilter_ColorR3U gui=underline guibg=bg guifg=tomato
    highlight! HighlightFilter_ColorR4U gui=underline guibg=bg guifg=OrangeRed
    highlight! HighlightFilter_ColorRU gui=underline guibg=bg guifg=red
    highlight! HighlightFilter_ColorR5U gui=underline guibg=bg guifg=DarkRed
    highlight! HighlightFilter_ColorR6U gui=underline guibg=bg guifg=maroon
    highlight! HighlightFilter_ColorBR1U gui=underline guibg=bg guifg=RosyBrown
    highlight! HighlightFilter_ColorBR2U gui=underline guibg=bg guifg=SaddleBrown
    highlight! HighlightFilter_ColorBR3U gui=underline guibg=bg guifg=sienna
    highlight! HighlightFilter_ColorBR4U gui=underline guibg=bg guifg=peru
    highlight! HighlightFilter_ColorBRU gui=underline guibg=bg guifg=burlywood
    highlight! HighlightFilter_ColorBR5U gui=underline guibg=bg guifg=SandyBrown
    highlight! HighlightFilter_ColorBR6U gui=underline guibg=bg guifg=chocolate
    highlight! HighlightFilter_ColorNH gui=none guibg=fg guifg=bg
    highlight! HighlightFilter_ColorW1H gui=none guibg=snow guifg=bg
    highlight! HighlightFilter_ColorW2H gui=none guibg=WhiteSmoke guifg=bg
    highlight! HighlightFilter_ColorW3H gui=none guibg=FloralWhite guifg=bg
    highlight! HighlightFilter_ColorW4H gui=none guibg=OldLace guifg=bg
    highlight! HighlightFilter_ColorW5H gui=none guibg=linen guifg=bg
    highlight! HighlightFilter_ColorW7H gui=none guibg=AntiqueWhite guifg=bg
    highlight! HighlightFilter_ColorWH gui=none guibg=white guifg=bg
    highlight! HighlightFilter_ColorY1H gui=none guibg=khaki guifg=bg
    highlight! HighlightFilter_ColorY2H gui=none guibg=PaleGoldenrod guifg=bg
    highlight! HighlightFilter_ColorYH gui=none guibg=yellow guifg=bg
    highlight! HighlightFilter_ColorY3H gui=none guibg=gold guifg=bg
    highlight! HighlightFilter_ColorY4H gui=none guibg=LightGoldenrod guifg=bg
    highlight! HighlightFilter_ColorY5H gui=none guibg=goldenrod guifg=bg
    highlight! HighlightFilter_ColorY6H gui=none guibg=DarkGoldenrod guifg=bg
    highlight! HighlightFilter_ColorG1H gui=none guibg=DarkGreen guifg=bg
    highlight! HighlightFilter_ColorG2H gui=none guibg=SeaGreen guifg=bg
    highlight! HighlightFilter_ColorG3H gui=none guibg=MediumSeaGreen guifg=bg
    highlight! HighlightFilter_ColorG4H gui=none guibg=PaleGreen guifg=bg
    highlight! HighlightFilter_ColorG5H gui=none guibg=SpringGreen guifg=bg
    highlight! HighlightFilter_ColorG6H gui=none guibg=LawnGreen guifg=bg
    highlight! HighlightFilter_ColorGH gui=none guibg=green guifg=bg
    highlight! HighlightFilter_ColorB1H gui=none guibg=NavyBlue guifg=bg
    highlight! HighlightFilter_ColorB2H gui=none guibg=RoyalBlue guifg=bg
    highlight! HighlightFilter_ColorBH gui=none guibg=blue guifg=bg
    highlight! HighlightFilter_ColorB3H gui=none guibg=DodgerBlue guifg=bg
    highlight! HighlightFilter_ColorB4H gui=none guibg=DeepSkyBlue guifg=bg
    highlight! HighlightFilter_ColorB5H gui=none guibg=skyBlue guifg=bg
    highlight! HighlightFilter_ColorB6H gui=none guibg=SteelBlue guifg=bg
    highlight! HighlightFilter_ColorMH gui=none guibg=magenta guifg=bg
    highlight! HighlightFilter_ColorM1H gui=none guibg=orchid guifg=bg
    highlight! HighlightFilter_ColorM2H gui=none guibg=MediumOrchid guifg=bg
    highlight! HighlightFilter_ColorM3H gui=none guibg=DarkOrchid guifg=bg
    highlight! HighlightFilter_ColorM5H gui=none guibg=purple guifg=bg
    highlight! HighlightFilter_ColorM6H gui=none guibg=MediumPurple guifg=bg
    highlight! HighlightFilter_ColorC1H gui=none guibg=PaleTurquoise guifg=bg
    highlight! HighlightFilter_ColorC2H gui=none guibg=DarkTurquoise guifg=bg
    highlight! HighlightFilter_ColorC3H gui=none guibg=DarkTurquoise guifg=bg
    highlight! HighlightFilter_ColorC4H gui=none guibg=MediumTurquoise guifg=bg
    highlight! HighlightFilter_ColorC5H gui=none guibg=turquoise guifg=bg
    highlight! HighlightFilter_ColorCH gui=none guibg=cyan guifg=bg
    highlight! HighlightFilter_ColorC6H gui=none guibg=aquamarine guifg=bg
    highlight! HighlightFilter_ColorV1H gui=none guibg=PaleVioletRed guifg=bg
    highlight! HighlightFilter_ColorV2H gui=none guibg=VioletRed guifg=bg
    highlight! HighlightFilter_ColorV3H gui=none guibg=HotPink guifg=bg
    highlight! HighlightFilter_ColorV4H gui=none guibg=DeepPink guifg=bg
    highlight! HighlightFilter_ColorVH gui=none guibg=violet guifg=bg
    highlight! HighlightFilter_ColorV5H gui=none guibg=DarkViolet guifg=bg
    highlight! HighlightFilter_ColorV6H gui=none guibg=BlueViolet guifg=bg
    highlight! HighlightFilter_ColorO1H gui=none guibg=DarkSalmon guifg=bg
    highlight! HighlightFilter_ColorO2H gui=none guibg=salmon guifg=bg
    highlight! HighlightFilter_ColorO3H gui=none guibg=LightSalmon guifg=bg
    highlight! HighlightFilter_ColorOH gui=none guibg=orange guifg=bg
    highlight! HighlightFilter_ColorO4H gui=none guibg=DarkOrange guifg=bg
    highlight! HighlightFilter_ColorO5H gui=none guibg=coral guifg=bg
    highlight! HighlightFilter_ColorO6H gui=none guibg=LightCoral guifg=bg
    highlight! HighlightFilter_ColorR1H gui=none guibg=IndianRed guifg=bg
    highlight! HighlightFilter_ColorR2H gui=none guibg=firebrick guifg=bg
    highlight! HighlightFilter_ColorR3H gui=none guibg=tomato guifg=bg
    highlight! HighlightFilter_ColorR4H gui=none guibg=OrangeRed guifg=bg
    highlight! HighlightFilter_ColorRH gui=none guibg=red guifg=bg
    highlight! HighlightFilter_ColorR5H gui=none guibg=DarkRed guifg=bg
    highlight! HighlightFilter_ColorR6H gui=none guibg=maroon guifg=bg
    highlight! HighlightFilter_ColorBR1H gui=none guibg=RosyBrown guifg=bg
    highlight! HighlightFilter_ColorBR2H gui=none guibg=SaddleBrown guifg=bg
    highlight! HighlightFilter_ColorBR3H gui=none guibg=sienna guifg=bg
    highlight! HighlightFilter_ColorBR4H gui=none guibg=peru guifg=bg
    highlight! HighlightFilter_ColorBRH gui=none guibg=burlywood guifg=bg
    highlight! HighlightFilter_ColorBR5H gui=none guibg=SandyBrown guifg=bg
    highlight! HighlightFilter_ColorBR6H gui=none guibg=chocolate guifg=bg
    highlight! HighlightFilter_ColorNHB gui=bold guibg=fg guifg=bg
    highlight! HighlightFilter_ColorW1HB gui=bold guibg=snow guifg=bg
    highlight! HighlightFilter_ColorW2HB gui=bold guibg=WhiteSmoke guifg=bg
    highlight! HighlightFilter_ColorW3HB gui=bold guibg=FloralWhite guifg=bg
    highlight! HighlightFilter_ColorW4HB gui=bold guibg=OldLace guifg=bg
    highlight! HighlightFilter_ColorW5HB gui=bold guibg=linen guifg=bg
    highlight! HighlightFilter_ColorW7HB gui=bold guibg=AntiqueWhite guifg=bg
    highlight! HighlightFilter_ColorWHB gui=bold guibg=white guifg=bg
    highlight! HighlightFilter_ColorY1HB gui=bold guibg=khaki guifg=bg
    highlight! HighlightFilter_ColorY2HB gui=bold guibg=PaleGoldenrod guifg=bg
    highlight! HighlightFilter_ColorYHB gui=bold guibg=yellow guifg=bg
    highlight! HighlightFilter_ColorY3HB gui=bold guibg=gold guifg=bg
    highlight! HighlightFilter_ColorY4HB gui=bold guibg=LightGoldenrod guifg=bg
    highlight! HighlightFilter_ColorY5HB gui=bold guibg=goldenrod guifg=bg
    highlight! HighlightFilter_ColorY6HB gui=bold guibg=DarkGoldenrod guifg=bg
    highlight! HighlightFilter_ColorG1HB gui=bold guibg=DarkGreen guifg=bg
    highlight! HighlightFilter_ColorG2HB gui=bold guibg=SeaGreen guifg=bg
    highlight! HighlightFilter_ColorG3HB gui=bold guibg=MediumSeaGreen guifg=bg
    highlight! HighlightFilter_ColorG4HB gui=bold guibg=PaleGreen guifg=bg
    highlight! HighlightFilter_ColorG5HB gui=bold guibg=SpringGreen guifg=bg
    highlight! HighlightFilter_ColorG6HB gui=bold guibg=LawnGreen guifg=bg
    highlight! HighlightFilter_ColorGHB gui=bold guibg=green guifg=bg
    highlight! HighlightFilter_ColorB1HB gui=bold guibg=NavyBlue guifg=bg
    highlight! HighlightFilter_ColorB2HB gui=bold guibg=RoyalBlue guifg=bg
    highlight! HighlightFilter_ColorBHB gui=bold guibg=blue guifg=bg
    highlight! HighlightFilter_ColorB3HB gui=bold guibg=DodgerBlue guifg=bg
    highlight! HighlightFilter_ColorB4HB gui=bold guibg=DeepSkyBlue guifg=bg
    highlight! HighlightFilter_ColorB5HB gui=bold guibg=skyBlue guifg=bg
    highlight! HighlightFilter_ColorB6HB gui=bold guibg=SteelBlue guifg=bg
    highlight! HighlightFilter_ColorMHB gui=bold guibg=magenta guifg=bg
    highlight! HighlightFilter_ColorM1HB gui=bold guibg=orchid guifg=bg
    highlight! HighlightFilter_ColorM2HB gui=bold guibg=MediumOrchid guifg=bg
    highlight! HighlightFilter_ColorM3HB gui=bold guibg=DarkOrchid guifg=bg
    highlight! HighlightFilter_ColorM5HB gui=bold guibg=purple guifg=bg
    highlight! HighlightFilter_ColorM6HB gui=bold guibg=MediumPurple guifg=bg
    highlight! HighlightFilter_ColorC1HB gui=bold guibg=PaleTurquoise guifg=bg
    highlight! HighlightFilter_ColorC2HB gui=bold guibg=DarkTurquoise guifg=bg
    highlight! HighlightFilter_ColorC3HB gui=bold guibg=DarkTurquoise guifg=bg
    highlight! HighlightFilter_ColorC4HB gui=bold guibg=MediumTurquoise guifg=bg
    highlight! HighlightFilter_ColorC5HB gui=bold guibg=turquoise guifg=bg
    highlight! HighlightFilter_ColorCHB gui=bold guibg=cyan guifg=bg
    highlight! HighlightFilter_ColorC6HB gui=bold guibg=aquamarine guifg=bg
    highlight! HighlightFilter_ColorV1HB gui=bold guibg=PaleVioletRed guifg=bg
    highlight! HighlightFilter_ColorV2HB gui=bold guibg=VioletRed guifg=bg
    highlight! HighlightFilter_ColorV3HB gui=bold guibg=HotPink guifg=bg
    highlight! HighlightFilter_ColorV4HB gui=bold guibg=DeepPink guifg=bg
    highlight! HighlightFilter_ColorVHB gui=bold guibg=violet guifg=bg
    highlight! HighlightFilter_ColorV5HB gui=bold guibg=DarkViolet guifg=bg
    highlight! HighlightFilter_ColorV6HB gui=bold guibg=BlueViolet guifg=bg
    highlight! HighlightFilter_ColorO1HB gui=bold guibg=DarkSalmon guifg=bg
    highlight! HighlightFilter_ColorO2HB gui=bold guibg=salmon guifg=bg
    highlight! HighlightFilter_ColorO3HB gui=bold guibg=LightSalmon guifg=bg
    highlight! HighlightFilter_ColorOHB gui=bold guibg=orange guifg=bg
    highlight! HighlightFilter_ColorO4HB gui=bold guibg=DarkOrange guifg=bg
    highlight! HighlightFilter_ColorO5HB gui=bold guibg=coral guifg=bg
    highlight! HighlightFilter_ColorO6HB gui=bold guibg=LightCoral guifg=bg
    highlight! HighlightFilter_ColorR1HB gui=bold guibg=IndianRed guifg=bg
    highlight! HighlightFilter_ColorR2HB gui=bold guibg=firebrick guifg=bg
    highlight! HighlightFilter_ColorR3HB gui=bold guibg=tomato guifg=bg
    highlight! HighlightFilter_ColorR4HB gui=bold guibg=OrangeRed guifg=bg
    highlight! HighlightFilter_ColorRHB gui=bold guibg=red guifg=bg
    highlight! HighlightFilter_ColorR5HB gui=bold guibg=DarkRed guifg=bg
    highlight! HighlightFilter_ColorR6HB gui=bold guibg=maroon guifg=bg
    highlight! HighlightFilter_ColorBR1HB gui=bold guibg=RosyBrown guifg=bg
    highlight! HighlightFilter_ColorBR2HB gui=bold guibg=SaddleBrown guifg=bg
    highlight! HighlightFilter_ColorBR3HB gui=bold guibg=sienna guifg=bg
    highlight! HighlightFilter_ColorBR4HB gui=bold guibg=peru guifg=bg
    highlight! HighlightFilter_ColorBRHB gui=bold guibg=burlywood guifg=bg
    highlight! HighlightFilter_ColorBR5HB gui=bold guibg=SandyBrown guifg=bg
    highlight! HighlightFilter_ColorBR6HB gui=bold guibg=chocolate guifg=bg

    let g:HighlightFilter_ColorDefinitionList = []
    let g:HighlightFilter_ColorDefinitionList += [ [ "N", "none", "bg", "fg", "none-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W1", "none", "bg", "snow", "snow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W2", "none", "bg", "WhiteSmoke", "WhiteSmoke-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W3", "none", "bg", "FloralWhite", "FloralWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W4", "none", "bg", "OldLace", "OldLace-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W5", "none", "bg", "linen", "linen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W7", "none", "bg", "AntiqueWhite", "AntiqueWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W", "none", "bg", "white", "white-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y1", "none", "bg", "khaki", "khaki-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y2", "none", "bg", "PaleGoldenrod", "PaleGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y", "none", "bg", "yellow", "yellow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y3", "none", "bg", "gold", "gold-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y4", "none", "bg", "LightGoldenrod", "LightGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y5", "none", "bg", "goldenrod", "goldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y6", "none", "bg", "DarkGoldenrod", "DarkGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G1", "none", "bg", "DarkGreen", "DarkGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G2", "none", "bg", "SeaGreen", "SeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G3", "none", "bg", "MediumSeaGreen", "MediumSeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G4", "none", "bg", "PaleGreen", "PaleGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G5", "none", "bg", "SpringGreen", "SpringGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G6", "none", "bg", "LawnGreen", "LawnGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G", "none", "bg", "green", "green-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B1", "none", "bg", "NavyBlue", "NavyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B2", "none", "bg", "RoyalBlue", "RoyalBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B", "none", "bg", "blue", "blue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B3", "none", "bg", "DodgerBlue", "DodgerBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B4", "none", "bg", "DeepSkyBlue", "DeepSkyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B5", "none", "bg", "skyBlue", "skyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B6", "none", "bg", "SteelBlue", "SteelBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M", "none", "bg", "magenta", "magenta-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M1", "none", "bg", "orchid", "orchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M2", "none", "bg", "MediumOrchid", "MediumOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M3", "none", "bg", "DarkOrchid", "DarkOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M5", "none", "bg", "purple", "purple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M6", "none", "bg", "MediumPurple", "MediumPurple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C1", "none", "bg", "PaleTurquoise", "PaleTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C2", "none", "bg", "DarkTurquoise", "DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C3", "none", "bg", "DarkTurquoise", "DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C4", "none", "bg", "MediumTurquoise", "MediumTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C5", "none", "bg", "turquoise", "turquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C", "none", "bg", "cyan", "cyan-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C6", "none", "bg", "aquamarine", "aquamarine-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V1", "none", "bg", "PaleVioletRed", "PaleVioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V2", "none", "bg", "VioletRed", "VioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V3", "none", "bg", "HotPink", "HotPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V4", "none", "bg", "DeepPink", "DeepPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V", "none", "bg", "violet", "violet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V5", "none", "bg", "DarkViolet", "DarkViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V6", "none", "bg", "BlueViolet", "BlueViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O1", "none", "bg", "DarkSalmon", "DarkSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O2", "none", "bg", "salmon", "salmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O3", "none", "bg", "LightSalmon", "LightSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O", "none", "bg", "orange", "orange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O4", "none", "bg", "DarkOrange", "DarkOrange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O5", "none", "bg", "coral", "coral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O6", "none", "bg", "LightCoral", "LightCoral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R1", "none", "bg", "IndianRed", "IndianRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R2", "none", "bg", "firebrick", "firebrick-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R3", "none", "bg", "tomato", "tomato-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R4", "none", "bg", "OrangeRed", "OrangeRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R", "none", "bg", "red", "red-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R5", "none", "bg", "DarkRed", "DarkRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R6", "none", "bg", "maroon", "maroon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR1", "none", "bg", "RosyBrown", "RosyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR2", "none", "bg", "SaddleBrown", "SaddleBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR3", "none", "bg", "sienna", "sienna-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR4", "none", "bg", "peru", "peru-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR", "none", "bg", "burlywood", "burlywood-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR5", "none", "bg", "SandyBrown", "SandyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR6", "none", "bg", "chocolate", "chocolate-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "N!", "bold", "bg", "fg", "bold-none-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W1!", "bold", "bg", "snow", "bold-snow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W2!", "bold", "bg", "WhiteSmoke", "bold-WhiteSmoke-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W3!", "bold", "bg", "FloralWhite", "bold-FloralWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W4!", "bold", "bg", "OldLace", "bold-OldLace-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W5!", "bold", "bg", "linen", "bold-linen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W7!", "bold", "bg", "AntiqueWhite", "bold-AntiqueWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W!", "bold", "bg", "white", "bold-white-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y1!", "bold", "bg", "khaki", "bold-khaki-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y2!", "bold", "bg", "PaleGoldenrod", "bold-PaleGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y!", "bold", "bg", "yellow", "bold-yellow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y3!", "bold", "bg", "gold", "bold-gold-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y4!", "bold", "bg", "LightGoldenrod", "bold-LightGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y5!", "bold", "bg", "goldenrod", "bold-goldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y6!", "bold", "bg", "DarkGoldenrod", "bold-DarkGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G1!", "bold", "bg", "DarkGreen", "bold-DarkGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G2!", "bold", "bg", "SeaGreen", "bold-SeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G3!", "bold", "bg", "MediumSeaGreen", "bold-MediumSeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G4!", "bold", "bg", "PaleGreen", "bold-PaleGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G5!", "bold", "bg", "SpringGreen", "bold-SpringGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G6!", "bold", "bg", "LawnGreen", "bold-LawnGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G!", "bold", "bg", "green", "bold-green-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B1!", "bold", "bg", "NavyBlue", "bold-NavyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B2!", "bold", "bg", "RoyalBlue", "bold-RoyalBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B!", "bold", "bg", "blue", "bold-blue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B3!", "bold", "bg", "DodgerBlue", "bold-DodgerBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B4!", "bold", "bg", "DeepSkyBlue", "bold-DeepSkyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B5!", "bold", "bg", "skyBlue", "bold-skyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B6!", "bold", "bg", "SteelBlue", "bold-SteelBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M!", "bold", "bg", "magenta", "bold-magenta-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M1!", "bold", "bg", "orchid", "bold-orchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M2!", "bold", "bg", "MediumOrchid", "bold-MediumOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M3!", "bold", "bg", "DarkOrchid", "bold-DarkOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M5!", "bold", "bg", "purple", "bold-purple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M6!", "bold", "bg", "MediumPurple", "bold-MediumPurple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C1!", "bold", "bg", "PaleTurquoise", "bold-PaleTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C2!", "bold", "bg", "DarkTurquoise", "bold-DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C3!", "bold", "bg", "DarkTurquoise", "bold-DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C4!", "bold", "bg", "MediumTurquoise", "bold-MediumTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C5!", "bold", "bg", "turquoise", "bold-turquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C!", "bold", "bg", "cyan", "bold-cyan-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C6!", "bold", "bg", "aquamarine", "bold-aquamarine-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V1!", "bold", "bg", "PaleVioletRed", "bold-PaleVioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V2!", "bold", "bg", "VioletRed", "bold-VioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V3!", "bold", "bg", "HotPink", "bold-HotPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V4!", "bold", "bg", "DeepPink", "bold-DeepPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V!", "bold", "bg", "violet", "bold-violet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V5!", "bold", "bg", "DarkViolet", "bold-DarkViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V6!", "bold", "bg", "BlueViolet", "bold-BlueViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O1!", "bold", "bg", "DarkSalmon", "bold-DarkSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O2!", "bold", "bg", "salmon", "bold-salmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O3!", "bold", "bg", "LightSalmon", "bold-LightSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O!", "bold", "bg", "orange", "bold-orange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O4!", "bold", "bg", "DarkOrange", "bold-DarkOrange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O5!", "bold", "bg", "coral", "bold-coral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O6!", "bold", "bg", "LightCoral", "bold-LightCoral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R1!", "bold", "bg", "IndianRed", "bold-IndianRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R2!", "bold", "bg", "firebrick", "bold-firebrick-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R3!", "bold", "bg", "tomato", "bold-tomato-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R4!", "bold", "bg", "OrangeRed", "bold-OrangeRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R!", "bold", "bg", "red", "bold-red-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R5!", "bold", "bg", "DarkRed", "bold-DarkRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R6!", "bold", "bg", "maroon", "bold-maroon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR1!", "bold", "bg", "RosyBrown", "bold-RosyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR2!", "bold", "bg", "SaddleBrown", "bold-SaddleBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR3!", "bold", "bg", "sienna", "bold-sienna-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR4!", "bold", "bg", "peru", "bold-peru-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR!", "bold", "bg", "burlywood", "bold-burlywood-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR5!", "bold", "bg", "SandyBrown", "bold-SandyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR6!", "bold", "bg", "chocolate", "bold-chocolate-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "N_", "underline", "bg", "fg", "underline-none-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W1_", "underline", "bg", "snow", "underline-snow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W2_", "underline", "bg", "WhiteSmoke", "underline-WhiteSmoke-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W3_", "underline", "bg", "FloralWhite", "underline-FloralWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W4_", "underline", "bg", "OldLace", "underline-OldLace-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W5_", "underline", "bg", "linen", "underline-linen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W7_", "underline", "bg", "AntiqueWhite", "underline-AntiqueWhite-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W_", "underline", "bg", "white", "underline-white-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y1_", "underline", "bg", "khaki", "underline-khaki-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y2_", "underline", "bg", "PaleGoldenrod", "underline-PaleGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y_", "underline", "bg", "yellow", "underline-yellow-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y3_", "underline", "bg", "gold", "underline-gold-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y4_", "underline", "bg", "LightGoldenrod", "underline-LightGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y5_", "underline", "bg", "goldenrod", "underline-goldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y6_", "underline", "bg", "DarkGoldenrod", "underline-DarkGoldenrod-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G1_", "underline", "bg", "DarkGreen", "underline-DarkGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G2_", "underline", "bg", "SeaGreen", "underline-SeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G3_", "underline", "bg", "MediumSeaGreen", "underline-MediumSeaGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G4_", "underline", "bg", "PaleGreen", "underline-PaleGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G5_", "underline", "bg", "SpringGreen", "underline-SpringGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G6_", "underline", "bg", "LawnGreen", "underline-LawnGreen-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G_", "underline", "bg", "green", "underline-green-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B1_", "underline", "bg", "NavyBlue", "underline-NavyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B2_", "underline", "bg", "RoyalBlue", "underline-RoyalBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B_", "underline", "bg", "blue", "underline-blue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B3_", "underline", "bg", "DodgerBlue", "underline-DodgerBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B4_", "underline", "bg", "DeepSkyBlue", "underline-DeepSkyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B5_", "underline", "bg", "skyBlue", "underline-skyBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B6_", "underline", "bg", "SteelBlue", "underline-SteelBlue-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M_", "underline", "bg", "magenta", "underline-magenta-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M1_", "underline", "bg", "orchid", "underline-orchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M2_", "underline", "bg", "MediumOrchid", "underline-MediumOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M3_", "underline", "bg", "DarkOrchid", "underline-DarkOrchid-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M5_", "underline", "bg", "purple", "underline-purple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M6_", "underline", "bg", "MediumPurple", "underline-MediumPurple-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C1_", "underline", "bg", "PaleTurquoise", "underline-PaleTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C2_", "underline", "bg", "DarkTurquoise", "underline-DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C3_", "underline", "bg", "DarkTurquoise", "underline-DarkTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C4_", "underline", "bg", "MediumTurquoise", "underline-MediumTurquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C5_", "underline", "bg", "turquoise", "underline-turquoise-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C_", "underline", "bg", "cyan", "underline-cyan-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C6_", "underline", "bg", "aquamarine", "underline-aquamarine-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V1_", "underline", "bg", "PaleVioletRed", "underline-PaleVioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V2_", "underline", "bg", "VioletRed", "underline-VioletRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V3_", "underline", "bg", "HotPink", "underline-HotPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V4_", "underline", "bg", "DeepPink", "underline-DeepPink-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V_", "underline", "bg", "violet", "underline-violet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V5_", "underline", "bg", "DarkViolet", "underline-DarkViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V6_", "underline", "bg", "BlueViolet", "underline-BlueViolet-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O1_", "underline", "bg", "DarkSalmon", "underline-DarkSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O2_", "underline", "bg", "salmon", "underline-salmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O3_", "underline", "bg", "LightSalmon", "underline-LightSalmon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O_", "underline", "bg", "orange", "underline-orange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O4_", "underline", "bg", "DarkOrange", "underline-DarkOrange-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O5_", "underline", "bg", "coral", "underline-coral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O6_", "underline", "bg", "LightCoral", "underline-LightCoral-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R1_", "underline", "bg", "IndianRed", "underline-IndianRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R2_", "underline", "bg", "firebrick", "underline-firebrick-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R3_", "underline", "bg", "tomato", "underline-tomato-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R4_", "underline", "bg", "OrangeRed", "underline-OrangeRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R_", "underline", "bg", "red", "underline-red-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R5_", "underline", "bg", "DarkRed", "underline-DarkRed-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R6_", "underline", "bg", "maroon", "underline-maroon-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR1_", "underline", "bg", "RosyBrown", "underline-RosyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR2_", "underline", "bg", "SaddleBrown", "underline-SaddleBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR3_", "underline", "bg", "sienna", "underline-sienna-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR4_", "underline", "bg", "peru", "underline-peru-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR_", "underline", "bg", "burlywood", "underline-burlywood-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR5_", "underline", "bg", "SandyBrown", "underline-SandyBrown-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR6_", "underline", "bg", "chocolate", "underline-chocolate-foreground" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "N#", "none", "fg", "bg", "none-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W1#", "none", "snow", "bg", "snow-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W2#", "none", "WhiteSmoke", "bg", "WhiteSmoke-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W3#", "none", "FloralWhite", "bg", "FloralWhite-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W4#", "none", "OldLace", "bg", "OldLace-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W5#", "none", "linen", "bg", "linen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W7#", "none", "AntiqueWhite", "bg", "AntiqueWhite-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W#", "none", "white", "bg", "white-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y1#", "none", "khaki", "bg", "khaki-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y2#", "none", "PaleGoldenrod", "bg", "PaleGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y#", "none", "yellow", "bg", "yellow-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y3#", "none", "gold", "bg", "gold-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y4#", "none", "LightGoldenrod", "bg", "LightGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y5#", "none", "goldenrod", "bg", "goldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y6#", "none", "DarkGoldenrod", "bg", "DarkGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G1#", "none", "DarkGreen", "bg", "DarkGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G2#", "none", "SeaGreen", "bg", "SeaGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G3#", "none", "MediumSeaGreen", "bg", "MediumSeaGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G4#", "none", "PaleGreen", "bg", "PaleGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G5#", "none", "SpringGreen", "bg", "SpringGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G6#", "none", "LawnGreen", "bg", "LawnGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G#", "none", "green", "bg", "green-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B1#", "none", "NavyBlue", "bg", "NavyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B2#", "none", "RoyalBlue", "bg", "RoyalBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B#", "none", "blue", "bg", "blue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B3#", "none", "DodgerBlue", "bg", "DodgerBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B4#", "none", "DeepSkyBlue", "bg", "DeepSkyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B5#", "none", "skyBlue", "bg", "skyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B6#", "none", "SteelBlue", "bg", "SteelBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M#", "none", "magenta", "bg", "magenta-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M1#", "none", "orchid", "bg", "orchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M2#", "none", "MediumOrchid", "bg", "MediumOrchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M3#", "none", "DarkOrchid", "bg", "DarkOrchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M5#", "none", "purple", "bg", "purple-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M6#", "none", "MediumPurple", "bg", "MediumPurple-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C1#", "none", "PaleTurquoise", "bg", "PaleTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C2#", "none", "DarkTurquoise", "bg", "DarkTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C3#", "none", "DarkTurquoise", "bg", "DarkTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C4#", "none", "MediumTurquoise", "bg", "MediumTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C5#", "none", "turquoise", "bg", "turquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C#", "none", "cyan", "bg", "cyan-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C6#", "none", "aquamarine", "bg", "aquamarine-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V1#", "none", "PaleVioletRed", "bg", "PaleVioletRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V2#", "none", "VioletRed", "bg", "VioletRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V3#", "none", "HotPink", "bg", "HotPink-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V4#", "none", "DeepPink", "bg", "DeepPink-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V#", "none", "violet", "bg", "violet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V5#", "none", "DarkViolet", "bg", "DarkViolet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V6#", "none", "BlueViolet", "bg", "BlueViolet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O1#", "none", "DarkSalmon", "bg", "DarkSalmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O2#", "none", "salmon", "bg", "salmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O3#", "none", "LightSalmon", "bg", "LightSalmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O#", "none", "orange", "bg", "orange-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O4#", "none", "DarkOrange", "bg", "DarkOrange-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O5#", "none", "coral", "bg", "coral-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O6#", "none", "LightCoral", "bg", "LightCoral-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R1#", "none", "IndianRed", "bg", "IndianRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R2#", "none", "firebrick", "bg", "firebrick-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R3#", "none", "tomato", "bg", "tomato-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R4#", "none", "OrangeRed", "bg", "OrangeRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R#", "none", "red", "bg", "red-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R5#", "none", "DarkRed", "bg", "DarkRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R6#", "none", "maroon", "bg", "maroon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR1#", "none", "RosyBrown", "bg", "RosyBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR2#", "none", "SaddleBrown", "bg", "SaddleBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR3#", "none", "sienna", "bg", "sienna-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR4#", "none", "peru", "bg", "peru-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR#", "none", "burlywood", "bg", "burlywood-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR5#", "none", "SandyBrown", "bg", "SandyBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR6#", "none", "chocolate", "bg", "chocolate-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "N#!", "bold", "fg", "bg", "bold-none-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W1#!", "bold", "snow", "bg", "bold-snow-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W2#!", "bold", "WhiteSmoke", "bg", "bold-WhiteSmoke-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W3#!", "bold", "FloralWhite", "bg", "bold-FloralWhite-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W4#!", "bold", "OldLace", "bg", "bold-OldLace-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W5#!", "bold", "linen", "bg", "bold-linen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W7#!", "bold", "AntiqueWhite", "bg", "bold-AntiqueWhite-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "W#!", "bold", "white", "bg", "bold-white-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y1#!", "bold", "khaki", "bg", "bold-khaki-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y2#!", "bold", "PaleGoldenrod", "bg", "bold-PaleGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y#!", "bold", "yellow", "bg", "bold-yellow-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y3#!", "bold", "gold", "bg", "bold-gold-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y4#!", "bold", "LightGoldenrod", "bg", "bold-LightGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y5#!", "bold", "goldenrod", "bg", "bold-goldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "Y6#!", "bold", "DarkGoldenrod", "bg", "bold-DarkGoldenrod-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G1#!", "bold", "DarkGreen", "bg", "bold-DarkGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G2#!", "bold", "SeaGreen", "bg", "bold-SeaGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G3#!", "bold", "MediumSeaGreen", "bg", "bold-MediumSeaGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G4#!", "bold", "PaleGreen", "bg", "bold-PaleGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G5#!", "bold", "SpringGreen", "bg", "bold-SpringGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G6#!", "bold", "LawnGreen", "bg", "bold-LawnGreen-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "G#!", "bold", "green", "bg", "bold-green-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B1#!", "bold", "NavyBlue", "bg", "bold-NavyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B2#!", "bold", "RoyalBlue", "bg", "bold-RoyalBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B#!", "bold", "blue", "bg", "bold-blue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B3#!", "bold", "DodgerBlue", "bg", "bold-DodgerBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B4#!", "bold", "DeepSkyBlue", "bg", "bold-DeepSkyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B5#!", "bold", "skyBlue", "bg", "bold-skyBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "B6#!", "bold", "SteelBlue", "bg", "bold-SteelBlue-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M#!", "bold", "magenta", "bg", "bold-magenta-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M1#!", "bold", "orchid", "bg", "bold-orchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M2#!", "bold", "MediumOrchid", "bg", "bold-MediumOrchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M3#!", "bold", "DarkOrchid", "bg", "bold-DarkOrchid-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M5#!", "bold", "purple", "bg", "bold-purple-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "M6#!", "bold", "MediumPurple", "bg", "bold-MediumPurple-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C1#!", "bold", "PaleTurquoise", "bg", "bold-PaleTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C2#!", "bold", "DarkTurquoise", "bg", "bold-DarkTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C3#!", "bold", "DarkTurquoise", "bg", "bold-DarkTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C4#!", "bold", "MediumTurquoise", "bg", "bold-MediumTurquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C5#!", "bold", "turquoise", "bg", "bold-turquoise-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C#!", "bold", "cyan", "bg", "bold-cyan-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "C6#!", "bold", "aquamarine", "bg", "bold-aquamarine-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V1#!", "bold", "PaleVioletRed", "bg", "bold-PaleVioletRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V2#!", "bold", "VioletRed", "bg", "bold-VioletRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V3#!", "bold", "HotPink", "bg", "bold-HotPink-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V4#!", "bold", "DeepPink", "bg", "bold-DeepPink-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V#!", "bold", "violet", "bg", "bold-violet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V5#!", "bold", "DarkViolet", "bg", "bold-DarkViolet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "V6#!", "bold", "BlueViolet", "bg", "bold-BlueViolet-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O1#!", "bold", "DarkSalmon", "bg", "bold-DarkSalmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O2#!", "bold", "salmon", "bg", "bold-salmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O3#!", "bold", "LightSalmon", "bg", "bold-LightSalmon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O#!", "bold", "orange", "bg", "bold-orange-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O4#!", "bold", "DarkOrange", "bg", "bold-DarkOrange-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O5#!", "bold", "coral", "bg", "bold-coral-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "O6#!", "bold", "LightCoral", "bg", "bold-LightCoral-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R1#!", "bold", "IndianRed", "bg", "bold-IndianRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R2#!", "bold", "firebrick", "bg", "bold-firebrick-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R3#!", "bold", "tomato", "bg", "bold-tomato-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R4#!", "bold", "OrangeRed", "bg", "bold-OrangeRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R#!", "bold", "red", "bg", "bold-red-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R5#!", "bold", "DarkRed", "bg", "bold-DarkRed-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "R6#!", "bold", "maroon", "bg", "bold-maroon-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR1#!", "bold", "RosyBrown", "bg", "bold-RosyBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR2#!", "bold", "SaddleBrown", "bg", "bold-SaddleBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR3#!", "bold", "sienna", "bg", "bold-sienna-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR4#!", "bold", "peru", "bg", "bold-peru-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR#!", "bold", "burlywood", "bg", "bold-burlywood-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR5#!", "bold", "SandyBrown", "bg", "bold-SandyBrown-background" ] ]
    let g:HighlightFilter_ColorDefinitionList += [ [ "BR6#!", "bold", "chocolate", "bg", "bold-chocolate-background" ] ]

    let g:HighlightFilter_BaseColors = "none snow WhiteSmoke FloralWhite OldLace linen AntiqueWhite white khaki PaleGoldenrod yellow gold LightGoldenrod goldenrod DarkGoldenrod DarkGreen SeaGreen MediumSeaGreen PaleGreen SpringGreen LawnGreen green NavyBlue RoyalBlue blue DodgerBlue DeepSkyBlue skyBlue SteelBlue magenta orchid MediumOrchid DarkOrchid purple MediumPurple PaleTurquoise DarkTurquoise DarkTurquoise MediumTurquoise turquoise cyan aquamarine PaleVioletRed VioletRed HotPink DeepPink violet DarkViolet BlueViolet DarkSalmon salmon LightSalmon orange DarkOrange coral LightCoral IndianRed firebrick tomato OrangeRed red DarkRed maroon RosyBrown SaddleBrown sienna peru burlywood SandyBrown chocolate "

    let g:HighlightFilter_ColorIds = "N W1 W2 W3 W4 W5 W7 W Y1 Y2 Y Y3 Y4 Y5 Y6 G1 G2 G3 G4 G5 G6 G B1 B2 B B3 B4 B5 B6 M M1 M2 M3 M5 M6 C1 C2 C3 C4 C5 C C6 V1 V2 V3 V4 V V5 V6 O1 O2 O3 O O4 O5 O6 R1 R2 R3 R4 R R5 R6 BR1 BR2 BR3 BR4 BR BR5 BR6 "
else
    if g:HighlightFilter_TermColors == 256
        echom "HighlightMatch Term 256 config"

        highlight! HighlightFilter_ColorN cterm=none ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorY cterm=none ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorY1 cterm=none ctermbg=bg ctermfg=186
        highlight! HighlightFilter_ColorY2 cterm=none ctermbg=bg ctermfg=229
        highlight! HighlightFilter_ColorY3 cterm=none ctermbg=bg ctermfg=228
        highlight! HighlightFilter_ColorY4 cterm=none ctermbg=bg ctermfg=192
        highlight! HighlightFilter_ColorY5 cterm=none ctermbg=bg ctermfg=227
        highlight! HighlightFilter_ColorY6 cterm=none ctermbg=bg ctermfg=191
        highlight! HighlightFilter_ColorY7 cterm=none ctermbg=bg ctermfg=190
        highlight! HighlightFilter_ColorY8 cterm=none ctermbg=bg ctermfg=220
        highlight! HighlightFilter_ColorG cterm=none ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG1 cterm=none ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG2 cterm=none ctermbg=bg ctermfg=48
        highlight! HighlightFilter_ColorG3 cterm=none ctermbg=bg ctermfg=47
        highlight! HighlightFilter_ColorG4 cterm=none ctermbg=bg ctermfg=41
        highlight! HighlightFilter_ColorG5 cterm=none ctermbg=bg ctermfg=40
        highlight! HighlightFilter_ColorG6 cterm=none ctermbg=bg ctermfg=34
        highlight! HighlightFilter_ColorG7 cterm=none ctermbg=bg ctermfg=28
        highlight! HighlightFilter_ColorG8 cterm=none ctermbg=bg ctermfg=22
        highlight! HighlightFilter_ColorB cterm=none ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorB1 cterm=none ctermbg=bg ctermfg=45
        highlight! HighlightFilter_ColorB2 cterm=none ctermbg=bg ctermfg=39
        highlight! HighlightFilter_ColorB3 cterm=none ctermbg=bg ctermfg=33
        highlight! HighlightFilter_ColorB4 cterm=none ctermbg=bg ctermfg=27
        highlight! HighlightFilter_ColorB5 cterm=none ctermbg=bg ctermfg=20
        highlight! HighlightFilter_ColorB6 cterm=none ctermbg=bg ctermfg=19
        highlight! HighlightFilter_ColorB7 cterm=none ctermbg=bg ctermfg=18
        highlight! HighlightFilter_ColorB8 cterm=none ctermbg=bg ctermfg=17
        highlight! HighlightFilter_ColorM cterm=none ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorM1 cterm=none ctermbg=bg ctermfg=177
        highlight! HighlightFilter_ColorM2 cterm=none ctermbg=bg ctermfg=171
        highlight! HighlightFilter_ColorM3 cterm=none ctermbg=bg ctermfg=165
        highlight! HighlightFilter_ColorM4 cterm=none ctermbg=bg ctermfg=164
        highlight! HighlightFilter_ColorM5 cterm=none ctermbg=bg ctermfg=128
        highlight! HighlightFilter_ColorM6 cterm=none ctermbg=bg ctermfg=127
        highlight! HighlightFilter_ColorM7 cterm=none ctermbg=bg ctermfg=126
        highlight! HighlightFilter_ColorM8 cterm=none ctermbg=bg ctermfg=90
        highlight! HighlightFilter_ColorC cterm=none ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorC1 cterm=none ctermbg=bg ctermfg=159
        highlight! HighlightFilter_ColorC2 cterm=none ctermbg=bg ctermfg=123
        highlight! HighlightFilter_ColorC3 cterm=none ctermbg=bg ctermfg=87
        highlight! HighlightFilter_ColorC4 cterm=none ctermbg=bg ctermfg=50
        highlight! HighlightFilter_ColorC5 cterm=none ctermbg=bg ctermfg=44
        highlight! HighlightFilter_ColorC6 cterm=none ctermbg=bg ctermfg=37
        highlight! HighlightFilter_ColorC7 cterm=none ctermbg=bg ctermfg=30
        highlight! HighlightFilter_ColorC8 cterm=none ctermbg=bg ctermfg=23
        highlight! HighlightFilter_ColorV cterm=none ctermbg=bg ctermfg=13
        highlight! HighlightFilter_ColorV1 cterm=none ctermbg=bg ctermfg=67
        highlight! HighlightFilter_ColorV2 cterm=none ctermbg=bg ctermfg=68
        highlight! HighlightFilter_ColorV3 cterm=none ctermbg=bg ctermfg=69
        highlight! HighlightFilter_ColorV4 cterm=none ctermbg=bg ctermfg=63
        highlight! HighlightFilter_ColorV5 cterm=none ctermbg=bg ctermfg=57
        highlight! HighlightFilter_ColorV6 cterm=none ctermbg=bg ctermfg=56
        highlight! HighlightFilter_ColorV7 cterm=none ctermbg=bg ctermfg=55
        highlight! HighlightFilter_ColorV8 cterm=none ctermbg=bg ctermfg=54
        highlight! HighlightFilter_ColorW cterm=none ctermbg=bg ctermfg=255
        highlight! HighlightFilter_ColorW1 cterm=none ctermbg=bg ctermfg=254
        highlight! HighlightFilter_ColorW2 cterm=none ctermbg=bg ctermfg=253
        highlight! HighlightFilter_ColorW3 cterm=none ctermbg=bg ctermfg=252
        highlight! HighlightFilter_ColorW4 cterm=none ctermbg=bg ctermfg=251
        highlight! HighlightFilter_ColorW5 cterm=none ctermbg=bg ctermfg=250
        highlight! HighlightFilter_ColorW6 cterm=none ctermbg=bg ctermfg=249
        highlight! HighlightFilter_ColorW7 cterm=none ctermbg=bg ctermfg=246
        highlight! HighlightFilter_ColorW8 cterm=none ctermbg=bg ctermfg=243
        highlight! HighlightFilter_ColorO cterm=none ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorO1 cterm=none ctermbg=bg ctermfg=174
        highlight! HighlightFilter_ColorO2 cterm=none ctermbg=bg ctermfg=216
        highlight! HighlightFilter_ColorO3 cterm=none ctermbg=bg ctermfg=215
        highlight! HighlightFilter_ColorO4 cterm=none ctermbg=bg ctermfg=214
        highlight! HighlightFilter_ColorO5 cterm=none ctermbg=bg ctermfg=208
        highlight! HighlightFilter_ColorO6 cterm=none ctermbg=bg ctermfg=202
        highlight! HighlightFilter_ColorO7 cterm=none ctermbg=bg ctermfg=166
        highlight! HighlightFilter_ColorO8 cterm=none ctermbg=bg ctermfg=130
        highlight! HighlightFilter_ColorR cterm=none ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorR1 cterm=none ctermbg=bg ctermfg=197
        highlight! HighlightFilter_ColorR2 cterm=none ctermbg=bg ctermfg=161
        highlight! HighlightFilter_ColorR3 cterm=none ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorR4 cterm=none ctermbg=bg ctermfg=196
        highlight! HighlightFilter_ColorR5 cterm=none ctermbg=bg ctermfg=160
        highlight! HighlightFilter_ColorR6 cterm=none ctermbg=bg ctermfg=124
        highlight! HighlightFilter_ColorR7 cterm=none ctermbg=bg ctermfg=88
        highlight! HighlightFilter_ColorR8 cterm=none ctermbg=bg ctermfg=52
        highlight! HighlightFilter_ColorNB cterm=bold ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorYB cterm=bold ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorY1B cterm=bold ctermbg=bg ctermfg=186
        highlight! HighlightFilter_ColorY2B cterm=bold ctermbg=bg ctermfg=229
        highlight! HighlightFilter_ColorY3B cterm=bold ctermbg=bg ctermfg=228
        highlight! HighlightFilter_ColorY4B cterm=bold ctermbg=bg ctermfg=192
        highlight! HighlightFilter_ColorY5B cterm=bold ctermbg=bg ctermfg=227
        highlight! HighlightFilter_ColorY6B cterm=bold ctermbg=bg ctermfg=191
        highlight! HighlightFilter_ColorY7B cterm=bold ctermbg=bg ctermfg=190
        highlight! HighlightFilter_ColorY8B cterm=bold ctermbg=bg ctermfg=220
        highlight! HighlightFilter_ColorGB cterm=bold ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG1B cterm=bold ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG2B cterm=bold ctermbg=bg ctermfg=48
        highlight! HighlightFilter_ColorG3B cterm=bold ctermbg=bg ctermfg=47
        highlight! HighlightFilter_ColorG4B cterm=bold ctermbg=bg ctermfg=41
        highlight! HighlightFilter_ColorG5B cterm=bold ctermbg=bg ctermfg=40
        highlight! HighlightFilter_ColorG6B cterm=bold ctermbg=bg ctermfg=34
        highlight! HighlightFilter_ColorG7B cterm=bold ctermbg=bg ctermfg=28
        highlight! HighlightFilter_ColorG8B cterm=bold ctermbg=bg ctermfg=22
        highlight! HighlightFilter_ColorBB cterm=bold ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorB1B cterm=bold ctermbg=bg ctermfg=45
        highlight! HighlightFilter_ColorB2B cterm=bold ctermbg=bg ctermfg=39
        highlight! HighlightFilter_ColorB3B cterm=bold ctermbg=bg ctermfg=33
        highlight! HighlightFilter_ColorB4B cterm=bold ctermbg=bg ctermfg=27
        highlight! HighlightFilter_ColorB5B cterm=bold ctermbg=bg ctermfg=20
        highlight! HighlightFilter_ColorB6B cterm=bold ctermbg=bg ctermfg=19
        highlight! HighlightFilter_ColorB7B cterm=bold ctermbg=bg ctermfg=18
        highlight! HighlightFilter_ColorB8B cterm=bold ctermbg=bg ctermfg=17
        highlight! HighlightFilter_ColorMB cterm=bold ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorM1B cterm=bold ctermbg=bg ctermfg=177
        highlight! HighlightFilter_ColorM2B cterm=bold ctermbg=bg ctermfg=171
        highlight! HighlightFilter_ColorM3B cterm=bold ctermbg=bg ctermfg=165
        highlight! HighlightFilter_ColorM4B cterm=bold ctermbg=bg ctermfg=164
        highlight! HighlightFilter_ColorM5B cterm=bold ctermbg=bg ctermfg=128
        highlight! HighlightFilter_ColorM6B cterm=bold ctermbg=bg ctermfg=127
        highlight! HighlightFilter_ColorM7B cterm=bold ctermbg=bg ctermfg=126
        highlight! HighlightFilter_ColorM8B cterm=bold ctermbg=bg ctermfg=90
        highlight! HighlightFilter_ColorCB cterm=bold ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorC1B cterm=bold ctermbg=bg ctermfg=159
        highlight! HighlightFilter_ColorC2B cterm=bold ctermbg=bg ctermfg=123
        highlight! HighlightFilter_ColorC3B cterm=bold ctermbg=bg ctermfg=87
        highlight! HighlightFilter_ColorC4B cterm=bold ctermbg=bg ctermfg=50
        highlight! HighlightFilter_ColorC5B cterm=bold ctermbg=bg ctermfg=44
        highlight! HighlightFilter_ColorC6B cterm=bold ctermbg=bg ctermfg=37
        highlight! HighlightFilter_ColorC7B cterm=bold ctermbg=bg ctermfg=30
        highlight! HighlightFilter_ColorC8B cterm=bold ctermbg=bg ctermfg=23
        highlight! HighlightFilter_ColorVB cterm=bold ctermbg=bg ctermfg=13
        highlight! HighlightFilter_ColorV1B cterm=bold ctermbg=bg ctermfg=67
        highlight! HighlightFilter_ColorV2B cterm=bold ctermbg=bg ctermfg=68
        highlight! HighlightFilter_ColorV3B cterm=bold ctermbg=bg ctermfg=69
        highlight! HighlightFilter_ColorV4B cterm=bold ctermbg=bg ctermfg=63
        highlight! HighlightFilter_ColorV5B cterm=bold ctermbg=bg ctermfg=57
        highlight! HighlightFilter_ColorV6B cterm=bold ctermbg=bg ctermfg=56
        highlight! HighlightFilter_ColorV7B cterm=bold ctermbg=bg ctermfg=55
        highlight! HighlightFilter_ColorV8B cterm=bold ctermbg=bg ctermfg=54
        highlight! HighlightFilter_ColorWB cterm=bold ctermbg=bg ctermfg=255
        highlight! HighlightFilter_ColorW1B cterm=bold ctermbg=bg ctermfg=254
        highlight! HighlightFilter_ColorW2B cterm=bold ctermbg=bg ctermfg=253
        highlight! HighlightFilter_ColorW3B cterm=bold ctermbg=bg ctermfg=252
        highlight! HighlightFilter_ColorW4B cterm=bold ctermbg=bg ctermfg=251
        highlight! HighlightFilter_ColorW5B cterm=bold ctermbg=bg ctermfg=250
        highlight! HighlightFilter_ColorW6B cterm=bold ctermbg=bg ctermfg=249
        highlight! HighlightFilter_ColorW7B cterm=bold ctermbg=bg ctermfg=246
        highlight! HighlightFilter_ColorW8B cterm=bold ctermbg=bg ctermfg=243
        highlight! HighlightFilter_ColorOB cterm=bold ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorO1B cterm=bold ctermbg=bg ctermfg=174
        highlight! HighlightFilter_ColorO2B cterm=bold ctermbg=bg ctermfg=216
        highlight! HighlightFilter_ColorO3B cterm=bold ctermbg=bg ctermfg=215
        highlight! HighlightFilter_ColorO4B cterm=bold ctermbg=bg ctermfg=214
        highlight! HighlightFilter_ColorO5B cterm=bold ctermbg=bg ctermfg=208
        highlight! HighlightFilter_ColorO6B cterm=bold ctermbg=bg ctermfg=202
        highlight! HighlightFilter_ColorO7B cterm=bold ctermbg=bg ctermfg=166
        highlight! HighlightFilter_ColorO8B cterm=bold ctermbg=bg ctermfg=130
        highlight! HighlightFilter_ColorRB cterm=bold ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorR1B cterm=bold ctermbg=bg ctermfg=197
        highlight! HighlightFilter_ColorR2B cterm=bold ctermbg=bg ctermfg=161
        highlight! HighlightFilter_ColorR3B cterm=bold ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorR4B cterm=bold ctermbg=bg ctermfg=196
        highlight! HighlightFilter_ColorR5B cterm=bold ctermbg=bg ctermfg=160
        highlight! HighlightFilter_ColorR6B cterm=bold ctermbg=bg ctermfg=124
        highlight! HighlightFilter_ColorR7B cterm=bold ctermbg=bg ctermfg=88
        highlight! HighlightFilter_ColorR8B cterm=bold ctermbg=bg ctermfg=52
        highlight! HighlightFilter_ColorNU cterm=underline ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorYU cterm=underline ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorY1U cterm=underline ctermbg=bg ctermfg=186
        highlight! HighlightFilter_ColorY2U cterm=underline ctermbg=bg ctermfg=229
        highlight! HighlightFilter_ColorY3U cterm=underline ctermbg=bg ctermfg=228
        highlight! HighlightFilter_ColorY4U cterm=underline ctermbg=bg ctermfg=192
        highlight! HighlightFilter_ColorY5U cterm=underline ctermbg=bg ctermfg=227
        highlight! HighlightFilter_ColorY6U cterm=underline ctermbg=bg ctermfg=191
        highlight! HighlightFilter_ColorY7U cterm=underline ctermbg=bg ctermfg=190
        highlight! HighlightFilter_ColorY8U cterm=underline ctermbg=bg ctermfg=220
        highlight! HighlightFilter_ColorGU cterm=underline ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG1U cterm=underline ctermbg=bg ctermfg=64
        highlight! HighlightFilter_ColorG2U cterm=underline ctermbg=bg ctermfg=48
        highlight! HighlightFilter_ColorG3U cterm=underline ctermbg=bg ctermfg=47
        highlight! HighlightFilter_ColorG4U cterm=underline ctermbg=bg ctermfg=41
        highlight! HighlightFilter_ColorG5U cterm=underline ctermbg=bg ctermfg=40
        highlight! HighlightFilter_ColorG6U cterm=underline ctermbg=bg ctermfg=34
        highlight! HighlightFilter_ColorG7U cterm=underline ctermbg=bg ctermfg=28
        highlight! HighlightFilter_ColorG8U cterm=underline ctermbg=bg ctermfg=22
        highlight! HighlightFilter_ColorBU cterm=underline ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorB1U cterm=underline ctermbg=bg ctermfg=45
        highlight! HighlightFilter_ColorB2U cterm=underline ctermbg=bg ctermfg=39
        highlight! HighlightFilter_ColorB3U cterm=underline ctermbg=bg ctermfg=33
        highlight! HighlightFilter_ColorB4U cterm=underline ctermbg=bg ctermfg=27
        highlight! HighlightFilter_ColorB5U cterm=underline ctermbg=bg ctermfg=20
        highlight! HighlightFilter_ColorB6U cterm=underline ctermbg=bg ctermfg=19
        highlight! HighlightFilter_ColorB7U cterm=underline ctermbg=bg ctermfg=18
        highlight! HighlightFilter_ColorB8U cterm=underline ctermbg=bg ctermfg=17
        highlight! HighlightFilter_ColorMU cterm=underline ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorM1U cterm=underline ctermbg=bg ctermfg=177
        highlight! HighlightFilter_ColorM2U cterm=underline ctermbg=bg ctermfg=171
        highlight! HighlightFilter_ColorM3U cterm=underline ctermbg=bg ctermfg=165
        highlight! HighlightFilter_ColorM4U cterm=underline ctermbg=bg ctermfg=164
        highlight! HighlightFilter_ColorM5U cterm=underline ctermbg=bg ctermfg=128
        highlight! HighlightFilter_ColorM6U cterm=underline ctermbg=bg ctermfg=127
        highlight! HighlightFilter_ColorM7U cterm=underline ctermbg=bg ctermfg=126
        highlight! HighlightFilter_ColorM8U cterm=underline ctermbg=bg ctermfg=90
        highlight! HighlightFilter_ColorCU cterm=underline ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorC1U cterm=underline ctermbg=bg ctermfg=159
        highlight! HighlightFilter_ColorC2U cterm=underline ctermbg=bg ctermfg=123
        highlight! HighlightFilter_ColorC3U cterm=underline ctermbg=bg ctermfg=87
        highlight! HighlightFilter_ColorC4U cterm=underline ctermbg=bg ctermfg=50
        highlight! HighlightFilter_ColorC5U cterm=underline ctermbg=bg ctermfg=44
        highlight! HighlightFilter_ColorC6U cterm=underline ctermbg=bg ctermfg=37
        highlight! HighlightFilter_ColorC7U cterm=underline ctermbg=bg ctermfg=30
        highlight! HighlightFilter_ColorC8U cterm=underline ctermbg=bg ctermfg=23
        highlight! HighlightFilter_ColorVU cterm=underline ctermbg=bg ctermfg=13
        highlight! HighlightFilter_ColorV1U cterm=underline ctermbg=bg ctermfg=67
        highlight! HighlightFilter_ColorV2U cterm=underline ctermbg=bg ctermfg=68
        highlight! HighlightFilter_ColorV3U cterm=underline ctermbg=bg ctermfg=69
        highlight! HighlightFilter_ColorV4U cterm=underline ctermbg=bg ctermfg=63
        highlight! HighlightFilter_ColorV5U cterm=underline ctermbg=bg ctermfg=57
        highlight! HighlightFilter_ColorV6U cterm=underline ctermbg=bg ctermfg=56
        highlight! HighlightFilter_ColorV7U cterm=underline ctermbg=bg ctermfg=55
        highlight! HighlightFilter_ColorV8U cterm=underline ctermbg=bg ctermfg=54
        highlight! HighlightFilter_ColorWU cterm=underline ctermbg=bg ctermfg=255
        highlight! HighlightFilter_ColorW1U cterm=underline ctermbg=bg ctermfg=254
        highlight! HighlightFilter_ColorW2U cterm=underline ctermbg=bg ctermfg=253
        highlight! HighlightFilter_ColorW3U cterm=underline ctermbg=bg ctermfg=252
        highlight! HighlightFilter_ColorW4U cterm=underline ctermbg=bg ctermfg=251
        highlight! HighlightFilter_ColorW5U cterm=underline ctermbg=bg ctermfg=250
        highlight! HighlightFilter_ColorW6U cterm=underline ctermbg=bg ctermfg=249
        highlight! HighlightFilter_ColorW7U cterm=underline ctermbg=bg ctermfg=246
        highlight! HighlightFilter_ColorW8U cterm=underline ctermbg=bg ctermfg=243
        highlight! HighlightFilter_ColorOU cterm=underline ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorO1U cterm=underline ctermbg=bg ctermfg=174
        highlight! HighlightFilter_ColorO2U cterm=underline ctermbg=bg ctermfg=216
        highlight! HighlightFilter_ColorO3U cterm=underline ctermbg=bg ctermfg=215
        highlight! HighlightFilter_ColorO4U cterm=underline ctermbg=bg ctermfg=214
        highlight! HighlightFilter_ColorO5U cterm=underline ctermbg=bg ctermfg=208
        highlight! HighlightFilter_ColorO6U cterm=underline ctermbg=bg ctermfg=202
        highlight! HighlightFilter_ColorO7U cterm=underline ctermbg=bg ctermfg=166
        highlight! HighlightFilter_ColorO8U cterm=underline ctermbg=bg ctermfg=130
        highlight! HighlightFilter_ColorRU cterm=underline ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorR1U cterm=underline ctermbg=bg ctermfg=197
        highlight! HighlightFilter_ColorR2U cterm=underline ctermbg=bg ctermfg=161
        highlight! HighlightFilter_ColorR3U cterm=underline ctermbg=bg ctermfg=125
        highlight! HighlightFilter_ColorR4U cterm=underline ctermbg=bg ctermfg=196
        highlight! HighlightFilter_ColorR5U cterm=underline ctermbg=bg ctermfg=160
        highlight! HighlightFilter_ColorR6U cterm=underline ctermbg=bg ctermfg=124
        highlight! HighlightFilter_ColorR7U cterm=underline ctermbg=bg ctermfg=88
        highlight! HighlightFilter_ColorR8U cterm=underline ctermbg=bg ctermfg=52
        highlight! HighlightFilter_ColorNH cterm=none ctermbg=fg ctermfg=bg
        highlight! HighlightFilter_ColorYH cterm=none ctermbg=3 ctermfg=bg
        highlight! HighlightFilter_ColorY1H cterm=none ctermbg=186 ctermfg=bg
        highlight! HighlightFilter_ColorY2H cterm=none ctermbg=229 ctermfg=bg
        highlight! HighlightFilter_ColorY3H cterm=none ctermbg=228 ctermfg=bg
        highlight! HighlightFilter_ColorY4H cterm=none ctermbg=192 ctermfg=bg
        highlight! HighlightFilter_ColorY5H cterm=none ctermbg=227 ctermfg=bg
        highlight! HighlightFilter_ColorY6H cterm=none ctermbg=191 ctermfg=bg
        highlight! HighlightFilter_ColorY7H cterm=none ctermbg=190 ctermfg=bg
        highlight! HighlightFilter_ColorY8H cterm=none ctermbg=220 ctermfg=bg
        highlight! HighlightFilter_ColorGH cterm=none ctermbg=64 ctermfg=bg
        highlight! HighlightFilter_ColorG1H cterm=none ctermbg=64 ctermfg=bg
        highlight! HighlightFilter_ColorG2H cterm=none ctermbg=48 ctermfg=bg
        highlight! HighlightFilter_ColorG3H cterm=none ctermbg=47 ctermfg=bg
        highlight! HighlightFilter_ColorG4H cterm=none ctermbg=41 ctermfg=bg
        highlight! HighlightFilter_ColorG5H cterm=none ctermbg=40 ctermfg=bg
        highlight! HighlightFilter_ColorG6H cterm=none ctermbg=34 ctermfg=bg
        highlight! HighlightFilter_ColorG7H cterm=none ctermbg=28 ctermfg=bg
        highlight! HighlightFilter_ColorG8H cterm=none ctermbg=22 ctermfg=bg
        highlight! HighlightFilter_ColorBH cterm=none ctermbg=4 ctermfg=bg
        highlight! HighlightFilter_ColorB1H cterm=none ctermbg=45 ctermfg=bg
        highlight! HighlightFilter_ColorB2H cterm=none ctermbg=39 ctermfg=bg
        highlight! HighlightFilter_ColorB3H cterm=none ctermbg=33 ctermfg=bg
        highlight! HighlightFilter_ColorB4H cterm=none ctermbg=27 ctermfg=bg
        highlight! HighlightFilter_ColorB5H cterm=none ctermbg=20 ctermfg=bg
        highlight! HighlightFilter_ColorB6H cterm=none ctermbg=19 ctermfg=bg
        highlight! HighlightFilter_ColorB7H cterm=none ctermbg=18 ctermfg=bg
        highlight! HighlightFilter_ColorB8H cterm=none ctermbg=17 ctermfg=bg
        highlight! HighlightFilter_ColorMH cterm=none ctermbg=125 ctermfg=bg
        highlight! HighlightFilter_ColorM1H cterm=none ctermbg=177 ctermfg=bg
        highlight! HighlightFilter_ColorM2H cterm=none ctermbg=171 ctermfg=bg
        highlight! HighlightFilter_ColorM3H cterm=none ctermbg=165 ctermfg=bg
        highlight! HighlightFilter_ColorM4H cterm=none ctermbg=164 ctermfg=bg
        highlight! HighlightFilter_ColorM5H cterm=none ctermbg=128 ctermfg=bg
        highlight! HighlightFilter_ColorM6H cterm=none ctermbg=127 ctermfg=bg
        highlight! HighlightFilter_ColorM7H cterm=none ctermbg=126 ctermfg=bg
        highlight! HighlightFilter_ColorM8H cterm=none ctermbg=90 ctermfg=bg
        highlight! HighlightFilter_ColorCH cterm=none ctermbg=6 ctermfg=bg
        highlight! HighlightFilter_ColorC1H cterm=none ctermbg=159 ctermfg=bg
        highlight! HighlightFilter_ColorC2H cterm=none ctermbg=123 ctermfg=bg
        highlight! HighlightFilter_ColorC3H cterm=none ctermbg=87 ctermfg=bg
        highlight! HighlightFilter_ColorC4H cterm=none ctermbg=50 ctermfg=bg
        highlight! HighlightFilter_ColorC5H cterm=none ctermbg=44 ctermfg=bg
        highlight! HighlightFilter_ColorC6H cterm=none ctermbg=37 ctermfg=bg
        highlight! HighlightFilter_ColorC7H cterm=none ctermbg=30 ctermfg=bg
        highlight! HighlightFilter_ColorC8H cterm=none ctermbg=23 ctermfg=bg
        highlight! HighlightFilter_ColorVH cterm=none ctermbg=13 ctermfg=bg
        highlight! HighlightFilter_ColorV1H cterm=none ctermbg=67 ctermfg=bg
        highlight! HighlightFilter_ColorV2H cterm=none ctermbg=68 ctermfg=bg
        highlight! HighlightFilter_ColorV3H cterm=none ctermbg=69 ctermfg=bg
        highlight! HighlightFilter_ColorV4H cterm=none ctermbg=63 ctermfg=bg
        highlight! HighlightFilter_ColorV5H cterm=none ctermbg=57 ctermfg=bg
        highlight! HighlightFilter_ColorV6H cterm=none ctermbg=56 ctermfg=bg
        highlight! HighlightFilter_ColorV7H cterm=none ctermbg=55 ctermfg=bg
        highlight! HighlightFilter_ColorV8H cterm=none ctermbg=54 ctermfg=bg
        highlight! HighlightFilter_ColorWH cterm=none ctermbg=255 ctermfg=bg
        highlight! HighlightFilter_ColorW1H cterm=none ctermbg=254 ctermfg=bg
        highlight! HighlightFilter_ColorW2H cterm=none ctermbg=253 ctermfg=bg
        highlight! HighlightFilter_ColorW3H cterm=none ctermbg=252 ctermfg=bg
        highlight! HighlightFilter_ColorW4H cterm=none ctermbg=251 ctermfg=bg
        highlight! HighlightFilter_ColorW5H cterm=none ctermbg=250 ctermfg=bg
        highlight! HighlightFilter_ColorW6H cterm=none ctermbg=249 ctermfg=bg
        highlight! HighlightFilter_ColorW7H cterm=none ctermbg=246 ctermfg=bg
        highlight! HighlightFilter_ColorW8H cterm=none ctermbg=243 ctermfg=bg
        highlight! HighlightFilter_ColorOH cterm=none ctermbg=9 ctermfg=bg
        highlight! HighlightFilter_ColorO1H cterm=none ctermbg=174 ctermfg=bg
        highlight! HighlightFilter_ColorO2H cterm=none ctermbg=216 ctermfg=bg
        highlight! HighlightFilter_ColorO3H cterm=none ctermbg=215 ctermfg=bg
        highlight! HighlightFilter_ColorO4H cterm=none ctermbg=214 ctermfg=bg
        highlight! HighlightFilter_ColorO5H cterm=none ctermbg=208 ctermfg=bg
        highlight! HighlightFilter_ColorO6H cterm=none ctermbg=202 ctermfg=bg
        highlight! HighlightFilter_ColorO7H cterm=none ctermbg=166 ctermfg=bg
        highlight! HighlightFilter_ColorO8H cterm=none ctermbg=130 ctermfg=bg
        highlight! HighlightFilter_ColorRH cterm=none ctermbg=1 ctermfg=bg
        highlight! HighlightFilter_ColorR1H cterm=none ctermbg=197 ctermfg=bg
        highlight! HighlightFilter_ColorR2H cterm=none ctermbg=161 ctermfg=bg
        highlight! HighlightFilter_ColorR3H cterm=none ctermbg=125 ctermfg=bg
        highlight! HighlightFilter_ColorR4H cterm=none ctermbg=196 ctermfg=bg
        highlight! HighlightFilter_ColorR5H cterm=none ctermbg=160 ctermfg=bg
        highlight! HighlightFilter_ColorR6H cterm=none ctermbg=124 ctermfg=bg
        highlight! HighlightFilter_ColorR7H cterm=none ctermbg=88 ctermfg=bg
        highlight! HighlightFilter_ColorR8H cterm=none ctermbg=52 ctermfg=bg
        highlight! HighlightFilter_ColorNHB cterm=bold ctermbg=fg ctermfg=bg
        highlight! HighlightFilter_ColorYHB cterm=bold ctermbg=3 ctermfg=bg
        highlight! HighlightFilter_ColorY1HB cterm=bold ctermbg=186 ctermfg=bg
        highlight! HighlightFilter_ColorY2HB cterm=bold ctermbg=229 ctermfg=bg
        highlight! HighlightFilter_ColorY3HB cterm=bold ctermbg=228 ctermfg=bg
        highlight! HighlightFilter_ColorY4HB cterm=bold ctermbg=192 ctermfg=bg
        highlight! HighlightFilter_ColorY5HB cterm=bold ctermbg=227 ctermfg=bg
        highlight! HighlightFilter_ColorY6HB cterm=bold ctermbg=191 ctermfg=bg
        highlight! HighlightFilter_ColorY7HB cterm=bold ctermbg=190 ctermfg=bg
        highlight! HighlightFilter_ColorY8HB cterm=bold ctermbg=220 ctermfg=bg
        highlight! HighlightFilter_ColorGHB cterm=bold ctermbg=64 ctermfg=bg
        highlight! HighlightFilter_ColorG1HB cterm=bold ctermbg=64 ctermfg=bg
        highlight! HighlightFilter_ColorG2HB cterm=bold ctermbg=48 ctermfg=bg
        highlight! HighlightFilter_ColorG3HB cterm=bold ctermbg=47 ctermfg=bg
        highlight! HighlightFilter_ColorG4HB cterm=bold ctermbg=41 ctermfg=bg
        highlight! HighlightFilter_ColorG5HB cterm=bold ctermbg=40 ctermfg=bg
        highlight! HighlightFilter_ColorG6HB cterm=bold ctermbg=34 ctermfg=bg
        highlight! HighlightFilter_ColorG7HB cterm=bold ctermbg=28 ctermfg=bg
        highlight! HighlightFilter_ColorG8HB cterm=bold ctermbg=22 ctermfg=bg
        highlight! HighlightFilter_ColorBHB cterm=bold ctermbg=4 ctermfg=bg
        highlight! HighlightFilter_ColorB1HB cterm=bold ctermbg=45 ctermfg=bg
        highlight! HighlightFilter_ColorB2HB cterm=bold ctermbg=39 ctermfg=bg
        highlight! HighlightFilter_ColorB3HB cterm=bold ctermbg=33 ctermfg=bg
        highlight! HighlightFilter_ColorB4HB cterm=bold ctermbg=27 ctermfg=bg
        highlight! HighlightFilter_ColorB5HB cterm=bold ctermbg=20 ctermfg=bg
        highlight! HighlightFilter_ColorB6HB cterm=bold ctermbg=19 ctermfg=bg
        highlight! HighlightFilter_ColorB7HB cterm=bold ctermbg=18 ctermfg=bg
        highlight! HighlightFilter_ColorB8HB cterm=bold ctermbg=17 ctermfg=bg
        highlight! HighlightFilter_ColorMHB cterm=bold ctermbg=125 ctermfg=bg
        highlight! HighlightFilter_ColorM1HB cterm=bold ctermbg=177 ctermfg=bg
        highlight! HighlightFilter_ColorM2HB cterm=bold ctermbg=171 ctermfg=bg
        highlight! HighlightFilter_ColorM3HB cterm=bold ctermbg=165 ctermfg=bg
        highlight! HighlightFilter_ColorM4HB cterm=bold ctermbg=164 ctermfg=bg
        highlight! HighlightFilter_ColorM5HB cterm=bold ctermbg=128 ctermfg=bg
        highlight! HighlightFilter_ColorM6HB cterm=bold ctermbg=127 ctermfg=bg
        highlight! HighlightFilter_ColorM7HB cterm=bold ctermbg=126 ctermfg=bg
        highlight! HighlightFilter_ColorM8HB cterm=bold ctermbg=90 ctermfg=bg
        highlight! HighlightFilter_ColorCHB cterm=bold ctermbg=6 ctermfg=bg
        highlight! HighlightFilter_ColorC1HB cterm=bold ctermbg=159 ctermfg=bg
        highlight! HighlightFilter_ColorC2HB cterm=bold ctermbg=123 ctermfg=bg
        highlight! HighlightFilter_ColorC3HB cterm=bold ctermbg=87 ctermfg=bg
        highlight! HighlightFilter_ColorC4HB cterm=bold ctermbg=50 ctermfg=bg
        highlight! HighlightFilter_ColorC5HB cterm=bold ctermbg=44 ctermfg=bg
        highlight! HighlightFilter_ColorC6HB cterm=bold ctermbg=37 ctermfg=bg
        highlight! HighlightFilter_ColorC7HB cterm=bold ctermbg=30 ctermfg=bg
        highlight! HighlightFilter_ColorC8HB cterm=bold ctermbg=23 ctermfg=bg
        highlight! HighlightFilter_ColorVHB cterm=bold ctermbg=13 ctermfg=bg
        highlight! HighlightFilter_ColorV1HB cterm=bold ctermbg=67 ctermfg=bg
        highlight! HighlightFilter_ColorV2HB cterm=bold ctermbg=68 ctermfg=bg
        highlight! HighlightFilter_ColorV3HB cterm=bold ctermbg=69 ctermfg=bg
        highlight! HighlightFilter_ColorV4HB cterm=bold ctermbg=63 ctermfg=bg
        highlight! HighlightFilter_ColorV5HB cterm=bold ctermbg=57 ctermfg=bg
        highlight! HighlightFilter_ColorV6HB cterm=bold ctermbg=56 ctermfg=bg
        highlight! HighlightFilter_ColorV7HB cterm=bold ctermbg=55 ctermfg=bg
        highlight! HighlightFilter_ColorV8HB cterm=bold ctermbg=54 ctermfg=bg
        highlight! HighlightFilter_ColorWHB cterm=bold ctermbg=255 ctermfg=bg
        highlight! HighlightFilter_ColorW1HB cterm=bold ctermbg=254 ctermfg=bg
        highlight! HighlightFilter_ColorW2HB cterm=bold ctermbg=253 ctermfg=bg
        highlight! HighlightFilter_ColorW3HB cterm=bold ctermbg=252 ctermfg=bg
        highlight! HighlightFilter_ColorW4HB cterm=bold ctermbg=251 ctermfg=bg
        highlight! HighlightFilter_ColorW5HB cterm=bold ctermbg=250 ctermfg=bg
        highlight! HighlightFilter_ColorW6HB cterm=bold ctermbg=249 ctermfg=bg
        highlight! HighlightFilter_ColorW7HB cterm=bold ctermbg=246 ctermfg=bg
        highlight! HighlightFilter_ColorW8HB cterm=bold ctermbg=243 ctermfg=bg
        highlight! HighlightFilter_ColorOHB cterm=bold ctermbg=9 ctermfg=bg
        highlight! HighlightFilter_ColorO1HB cterm=bold ctermbg=174 ctermfg=bg
        highlight! HighlightFilter_ColorO2HB cterm=bold ctermbg=216 ctermfg=bg
        highlight! HighlightFilter_ColorO3HB cterm=bold ctermbg=215 ctermfg=bg
        highlight! HighlightFilter_ColorO4HB cterm=bold ctermbg=214 ctermfg=bg
        highlight! HighlightFilter_ColorO5HB cterm=bold ctermbg=208 ctermfg=bg
        highlight! HighlightFilter_ColorO6HB cterm=bold ctermbg=202 ctermfg=bg
        highlight! HighlightFilter_ColorO7HB cterm=bold ctermbg=166 ctermfg=bg
        highlight! HighlightFilter_ColorO8HB cterm=bold ctermbg=130 ctermfg=bg
        highlight! HighlightFilter_ColorRHB cterm=bold ctermbg=1 ctermfg=bg
        highlight! HighlightFilter_ColorR1HB cterm=bold ctermbg=197 ctermfg=bg
        highlight! HighlightFilter_ColorR2HB cterm=bold ctermbg=161 ctermfg=bg
        highlight! HighlightFilter_ColorR3HB cterm=bold ctermbg=125 ctermfg=bg
        highlight! HighlightFilter_ColorR4HB cterm=bold ctermbg=196 ctermfg=bg
        highlight! HighlightFilter_ColorR5HB cterm=bold ctermbg=160 ctermfg=bg
        highlight! HighlightFilter_ColorR6HB cterm=bold ctermbg=124 ctermfg=bg
        highlight! HighlightFilter_ColorR7HB cterm=bold ctermbg=88 ctermfg=bg
        highlight! HighlightFilter_ColorR8HB cterm=bold ctermbg=52 ctermfg=bg

        let g:HighlightFilter_ColorDefinitionList = []
        let g:HighlightFilter_ColorDefinitionList += [ [ "N", "none", "bg", "fg", "none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y", "none", "bg", "3", "yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y1", "none", "bg", "186", "yellow1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y2", "none", "bg", "229", "yellow2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y3", "none", "bg", "228", "yellow3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y4", "none", "bg", "192", "yellow4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y5", "none", "bg", "227", "yellow5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y6", "none", "bg", "191", "yellow6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y7", "none", "bg", "190", "yellow7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y8", "none", "bg", "220", "yellow8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G", "none", "bg", "64", "green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G1", "none", "bg", "64", "green1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G2", "none", "bg", "48", "green2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G3", "none", "bg", "47", "green3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G4", "none", "bg", "41", "green4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G5", "none", "bg", "40", "green5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G6", "none", "bg", "34", "green6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G7", "none", "bg", "28", "green7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G8", "none", "bg", "22", "green8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B", "none", "bg", "4", "blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B1", "none", "bg", "45", "blue1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B2", "none", "bg", "39", "blue2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B3", "none", "bg", "33", "blue3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B4", "none", "bg", "27", "blue4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B5", "none", "bg", "20", "blue5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B6", "none", "bg", "19", "blue6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B7", "none", "bg", "18", "blue7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B8", "none", "bg", "17", "blue8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M", "none", "bg", "125", "magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M1", "none", "bg", "177", "magenta1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M2", "none", "bg", "171", "magenta2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M3", "none", "bg", "165", "magenta3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M4", "none", "bg", "164", "magenta4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M5", "none", "bg", "128", "magenta5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M6", "none", "bg", "127", "magenta6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M7", "none", "bg", "126", "magenta7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M8", "none", "bg", "90", "magenta8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C", "none", "bg", "6", "cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C1", "none", "bg", "159", "cyan1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C2", "none", "bg", "123", "cyan2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C3", "none", "bg", "87", "cyan3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C4", "none", "bg", "50", "cyan4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C5", "none", "bg", "44", "cyan5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C6", "none", "bg", "37", "cyan6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C7", "none", "bg", "30", "cyan7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C8", "none", "bg", "23", "cyan8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V", "none", "bg", "13", "violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V1", "none", "bg", "67", "violet1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V2", "none", "bg", "68", "violet2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V3", "none", "bg", "69", "violet3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V4", "none", "bg", "63", "violet4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V5", "none", "bg", "57", "violet5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V6", "none", "bg", "56", "violet6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V7", "none", "bg", "55", "violet7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V8", "none", "bg", "54", "violet8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W", "none", "bg", "255", "white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W1", "none", "bg", "254", "white1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W2", "none", "bg", "253", "white2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W3", "none", "bg", "252", "white3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W4", "none", "bg", "251", "white4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W5", "none", "bg", "250", "white5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W6", "none", "bg", "249", "white6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W7", "none", "bg", "246", "white7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W8", "none", "bg", "243", "white8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O", "none", "bg", "9", "orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O1", "none", "bg", "174", "orange1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O2", "none", "bg", "216", "orange2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O3", "none", "bg", "215", "orange3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O4", "none", "bg", "214", "orange4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O5", "none", "bg", "208", "orange5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O6", "none", "bg", "202", "orange6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O7", "none", "bg", "166", "orange7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O8", "none", "bg", "130", "orange8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R", "none", "bg", "1", "red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R1", "none", "bg", "197", "red1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R2", "none", "bg", "161", "red2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R3", "none", "bg", "125", "red3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R4", "none", "bg", "196", "red4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R5", "none", "bg", "160", "red5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R6", "none", "bg", "124", "red6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R7", "none", "bg", "88", "red7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R8", "none", "bg", "52", "red8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N!", "bold", "bg", "fg", "bold-none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y!", "bold", "bg", "3", "bold-yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y1!", "bold", "bg", "186", "bold-yellow1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y2!", "bold", "bg", "229", "bold-yellow2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y3!", "bold", "bg", "228", "bold-yellow3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y4!", "bold", "bg", "192", "bold-yellow4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y5!", "bold", "bg", "227", "bold-yellow5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y6!", "bold", "bg", "191", "bold-yellow6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y7!", "bold", "bg", "190", "bold-yellow7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y8!", "bold", "bg", "220", "bold-yellow8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G!", "bold", "bg", "64", "bold-green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G1!", "bold", "bg", "64", "bold-green1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G2!", "bold", "bg", "48", "bold-green2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G3!", "bold", "bg", "47", "bold-green3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G4!", "bold", "bg", "41", "bold-green4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G5!", "bold", "bg", "40", "bold-green5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G6!", "bold", "bg", "34", "bold-green6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G7!", "bold", "bg", "28", "bold-green7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G8!", "bold", "bg", "22", "bold-green8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B!", "bold", "bg", "4", "bold-blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B1!", "bold", "bg", "45", "bold-blue1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B2!", "bold", "bg", "39", "bold-blue2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B3!", "bold", "bg", "33", "bold-blue3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B4!", "bold", "bg", "27", "bold-blue4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B5!", "bold", "bg", "20", "bold-blue5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B6!", "bold", "bg", "19", "bold-blue6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B7!", "bold", "bg", "18", "bold-blue7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B8!", "bold", "bg", "17", "bold-blue8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M!", "bold", "bg", "125", "bold-magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M1!", "bold", "bg", "177", "bold-magenta1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M2!", "bold", "bg", "171", "bold-magenta2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M3!", "bold", "bg", "165", "bold-magenta3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M4!", "bold", "bg", "164", "bold-magenta4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M5!", "bold", "bg", "128", "bold-magenta5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M6!", "bold", "bg", "127", "bold-magenta6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M7!", "bold", "bg", "126", "bold-magenta7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M8!", "bold", "bg", "90", "bold-magenta8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C!", "bold", "bg", "6", "bold-cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C1!", "bold", "bg", "159", "bold-cyan1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C2!", "bold", "bg", "123", "bold-cyan2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C3!", "bold", "bg", "87", "bold-cyan3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C4!", "bold", "bg", "50", "bold-cyan4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C5!", "bold", "bg", "44", "bold-cyan5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C6!", "bold", "bg", "37", "bold-cyan6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C7!", "bold", "bg", "30", "bold-cyan7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C8!", "bold", "bg", "23", "bold-cyan8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V!", "bold", "bg", "13", "bold-violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V1!", "bold", "bg", "67", "bold-violet1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V2!", "bold", "bg", "68", "bold-violet2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V3!", "bold", "bg", "69", "bold-violet3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V4!", "bold", "bg", "63", "bold-violet4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V5!", "bold", "bg", "57", "bold-violet5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V6!", "bold", "bg", "56", "bold-violet6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V7!", "bold", "bg", "55", "bold-violet7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V8!", "bold", "bg", "54", "bold-violet8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W!", "bold", "bg", "255", "bold-white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W1!", "bold", "bg", "254", "bold-white1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W2!", "bold", "bg", "253", "bold-white2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W3!", "bold", "bg", "252", "bold-white3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W4!", "bold", "bg", "251", "bold-white4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W5!", "bold", "bg", "250", "bold-white5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W6!", "bold", "bg", "249", "bold-white6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W7!", "bold", "bg", "246", "bold-white7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W8!", "bold", "bg", "243", "bold-white8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O!", "bold", "bg", "9", "bold-orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O1!", "bold", "bg", "174", "bold-orange1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O2!", "bold", "bg", "216", "bold-orange2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O3!", "bold", "bg", "215", "bold-orange3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O4!", "bold", "bg", "214", "bold-orange4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O5!", "bold", "bg", "208", "bold-orange5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O6!", "bold", "bg", "202", "bold-orange6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O7!", "bold", "bg", "166", "bold-orange7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O8!", "bold", "bg", "130", "bold-orange8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R!", "bold", "bg", "1", "bold-red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R1!", "bold", "bg", "197", "bold-red1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R2!", "bold", "bg", "161", "bold-red2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R3!", "bold", "bg", "125", "bold-red3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R4!", "bold", "bg", "196", "bold-red4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R5!", "bold", "bg", "160", "bold-red5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R6!", "bold", "bg", "124", "bold-red6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R7!", "bold", "bg", "88", "bold-red7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R8!", "bold", "bg", "52", "bold-red8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N_", "underline", "bg", "fg", "underline-none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y_", "underline", "bg", "3", "underline-yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y1_", "underline", "bg", "186", "underline-yellow1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y2_", "underline", "bg", "229", "underline-yellow2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y3_", "underline", "bg", "228", "underline-yellow3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y4_", "underline", "bg", "192", "underline-yellow4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y5_", "underline", "bg", "227", "underline-yellow5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y6_", "underline", "bg", "191", "underline-yellow6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y7_", "underline", "bg", "190", "underline-yellow7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y8_", "underline", "bg", "220", "underline-yellow8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G_", "underline", "bg", "64", "underline-green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G1_", "underline", "bg", "64", "underline-green1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G2_", "underline", "bg", "48", "underline-green2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G3_", "underline", "bg", "47", "underline-green3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G4_", "underline", "bg", "41", "underline-green4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G5_", "underline", "bg", "40", "underline-green5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G6_", "underline", "bg", "34", "underline-green6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G7_", "underline", "bg", "28", "underline-green7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G8_", "underline", "bg", "22", "underline-green8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B_", "underline", "bg", "4", "underline-blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B1_", "underline", "bg", "45", "underline-blue1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B2_", "underline", "bg", "39", "underline-blue2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B3_", "underline", "bg", "33", "underline-blue3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B4_", "underline", "bg", "27", "underline-blue4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B5_", "underline", "bg", "20", "underline-blue5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B6_", "underline", "bg", "19", "underline-blue6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B7_", "underline", "bg", "18", "underline-blue7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B8_", "underline", "bg", "17", "underline-blue8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M_", "underline", "bg", "125", "underline-magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M1_", "underline", "bg", "177", "underline-magenta1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M2_", "underline", "bg", "171", "underline-magenta2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M3_", "underline", "bg", "165", "underline-magenta3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M4_", "underline", "bg", "164", "underline-magenta4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M5_", "underline", "bg", "128", "underline-magenta5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M6_", "underline", "bg", "127", "underline-magenta6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M7_", "underline", "bg", "126", "underline-magenta7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M8_", "underline", "bg", "90", "underline-magenta8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C_", "underline", "bg", "6", "underline-cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C1_", "underline", "bg", "159", "underline-cyan1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C2_", "underline", "bg", "123", "underline-cyan2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C3_", "underline", "bg", "87", "underline-cyan3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C4_", "underline", "bg", "50", "underline-cyan4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C5_", "underline", "bg", "44", "underline-cyan5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C6_", "underline", "bg", "37", "underline-cyan6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C7_", "underline", "bg", "30", "underline-cyan7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C8_", "underline", "bg", "23", "underline-cyan8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V_", "underline", "bg", "13", "underline-violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V1_", "underline", "bg", "67", "underline-violet1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V2_", "underline", "bg", "68", "underline-violet2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V3_", "underline", "bg", "69", "underline-violet3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V4_", "underline", "bg", "63", "underline-violet4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V5_", "underline", "bg", "57", "underline-violet5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V6_", "underline", "bg", "56", "underline-violet6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V7_", "underline", "bg", "55", "underline-violet7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V8_", "underline", "bg", "54", "underline-violet8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W_", "underline", "bg", "255", "underline-white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W1_", "underline", "bg", "254", "underline-white1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W2_", "underline", "bg", "253", "underline-white2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W3_", "underline", "bg", "252", "underline-white3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W4_", "underline", "bg", "251", "underline-white4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W5_", "underline", "bg", "250", "underline-white5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W6_", "underline", "bg", "249", "underline-white6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W7_", "underline", "bg", "246", "underline-white7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W8_", "underline", "bg", "243", "underline-white8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O_", "underline", "bg", "9", "underline-orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O1_", "underline", "bg", "174", "underline-orange1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O2_", "underline", "bg", "216", "underline-orange2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O3_", "underline", "bg", "215", "underline-orange3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O4_", "underline", "bg", "214", "underline-orange4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O5_", "underline", "bg", "208", "underline-orange5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O6_", "underline", "bg", "202", "underline-orange6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O7_", "underline", "bg", "166", "underline-orange7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O8_", "underline", "bg", "130", "underline-orange8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R_", "underline", "bg", "1", "underline-red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R1_", "underline", "bg", "197", "underline-red1-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R2_", "underline", "bg", "161", "underline-red2-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R3_", "underline", "bg", "125", "underline-red3-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R4_", "underline", "bg", "196", "underline-red4-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R5_", "underline", "bg", "160", "underline-red5-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R6_", "underline", "bg", "124", "underline-red6-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R7_", "underline", "bg", "88", "underline-red7-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R8_", "underline", "bg", "52", "underline-red8-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N#", "none", "fg", "bg", "none-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y#", "none", "3", "bg", "yellow-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y1#", "none", "186", "bg", "yellow1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y2#", "none", "229", "bg", "yellow2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y3#", "none", "228", "bg", "yellow3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y4#", "none", "192", "bg", "yellow4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y5#", "none", "227", "bg", "yellow5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y6#", "none", "191", "bg", "yellow6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y7#", "none", "190", "bg", "yellow7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y8#", "none", "220", "bg", "yellow8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G#", "none", "64", "bg", "green-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G1#", "none", "64", "bg", "green1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G2#", "none", "48", "bg", "green2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G3#", "none", "47", "bg", "green3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G4#", "none", "41", "bg", "green4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G5#", "none", "40", "bg", "green5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G6#", "none", "34", "bg", "green6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G7#", "none", "28", "bg", "green7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G8#", "none", "22", "bg", "green8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B#", "none", "4", "bg", "blue-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B1#", "none", "45", "bg", "blue1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B2#", "none", "39", "bg", "blue2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B3#", "none", "33", "bg", "blue3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B4#", "none", "27", "bg", "blue4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B5#", "none", "20", "bg", "blue5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B6#", "none", "19", "bg", "blue6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B7#", "none", "18", "bg", "blue7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B8#", "none", "17", "bg", "blue8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M#", "none", "125", "bg", "magenta-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M1#", "none", "177", "bg", "magenta1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M2#", "none", "171", "bg", "magenta2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M3#", "none", "165", "bg", "magenta3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M4#", "none", "164", "bg", "magenta4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M5#", "none", "128", "bg", "magenta5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M6#", "none", "127", "bg", "magenta6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M7#", "none", "126", "bg", "magenta7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M8#", "none", "90", "bg", "magenta8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C#", "none", "6", "bg", "cyan-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C1#", "none", "159", "bg", "cyan1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C2#", "none", "123", "bg", "cyan2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C3#", "none", "87", "bg", "cyan3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C4#", "none", "50", "bg", "cyan4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C5#", "none", "44", "bg", "cyan5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C6#", "none", "37", "bg", "cyan6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C7#", "none", "30", "bg", "cyan7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C8#", "none", "23", "bg", "cyan8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V#", "none", "13", "bg", "violet-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V1#", "none", "67", "bg", "violet1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V2#", "none", "68", "bg", "violet2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V3#", "none", "69", "bg", "violet3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V4#", "none", "63", "bg", "violet4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V5#", "none", "57", "bg", "violet5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V6#", "none", "56", "bg", "violet6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V7#", "none", "55", "bg", "violet7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V8#", "none", "54", "bg", "violet8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W#", "none", "255", "bg", "white-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W1#", "none", "254", "bg", "white1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W2#", "none", "253", "bg", "white2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W3#", "none", "252", "bg", "white3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W4#", "none", "251", "bg", "white4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W5#", "none", "250", "bg", "white5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W6#", "none", "249", "bg", "white6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W7#", "none", "246", "bg", "white7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W8#", "none", "243", "bg", "white8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O#", "none", "9", "bg", "orange-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O1#", "none", "174", "bg", "orange1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O2#", "none", "216", "bg", "orange2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O3#", "none", "215", "bg", "orange3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O4#", "none", "214", "bg", "orange4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O5#", "none", "208", "bg", "orange5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O6#", "none", "202", "bg", "orange6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O7#", "none", "166", "bg", "orange7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O8#", "none", "130", "bg", "orange8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R#", "none", "1", "bg", "red-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R1#", "none", "197", "bg", "red1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R2#", "none", "161", "bg", "red2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R3#", "none", "125", "bg", "red3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R4#", "none", "196", "bg", "red4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R5#", "none", "160", "bg", "red5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R6#", "none", "124", "bg", "red6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R7#", "none", "88", "bg", "red7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R8#", "none", "52", "bg", "red8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N#!", "bold", "fg", "bg", "bold-none-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y#!", "bold", "3", "bg", "bold-yellow-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y1#!", "bold", "186", "bg", "bold-yellow1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y2#!", "bold", "229", "bg", "bold-yellow2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y3#!", "bold", "228", "bg", "bold-yellow3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y4#!", "bold", "192", "bg", "bold-yellow4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y5#!", "bold", "227", "bg", "bold-yellow5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y6#!", "bold", "191", "bg", "bold-yellow6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y7#!", "bold", "190", "bg", "bold-yellow7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y8#!", "bold", "220", "bg", "bold-yellow8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G#!", "bold", "64", "bg", "bold-green-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G1#!", "bold", "64", "bg", "bold-green1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G2#!", "bold", "48", "bg", "bold-green2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G3#!", "bold", "47", "bg", "bold-green3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G4#!", "bold", "41", "bg", "bold-green4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G5#!", "bold", "40", "bg", "bold-green5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G6#!", "bold", "34", "bg", "bold-green6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G7#!", "bold", "28", "bg", "bold-green7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G8#!", "bold", "22", "bg", "bold-green8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B#!", "bold", "4", "bg", "bold-blue-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B1#!", "bold", "45", "bg", "bold-blue1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B2#!", "bold", "39", "bg", "bold-blue2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B3#!", "bold", "33", "bg", "bold-blue3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B4#!", "bold", "27", "bg", "bold-blue4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B5#!", "bold", "20", "bg", "bold-blue5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B6#!", "bold", "19", "bg", "bold-blue6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B7#!", "bold", "18", "bg", "bold-blue7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B8#!", "bold", "17", "bg", "bold-blue8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M#!", "bold", "125", "bg", "bold-magenta-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M1#!", "bold", "177", "bg", "bold-magenta1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M2#!", "bold", "171", "bg", "bold-magenta2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M3#!", "bold", "165", "bg", "bold-magenta3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M4#!", "bold", "164", "bg", "bold-magenta4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M5#!", "bold", "128", "bg", "bold-magenta5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M6#!", "bold", "127", "bg", "bold-magenta6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M7#!", "bold", "126", "bg", "bold-magenta7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M8#!", "bold", "90", "bg", "bold-magenta8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C#!", "bold", "6", "bg", "bold-cyan-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C1#!", "bold", "159", "bg", "bold-cyan1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C2#!", "bold", "123", "bg", "bold-cyan2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C3#!", "bold", "87", "bg", "bold-cyan3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C4#!", "bold", "50", "bg", "bold-cyan4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C5#!", "bold", "44", "bg", "bold-cyan5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C6#!", "bold", "37", "bg", "bold-cyan6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C7#!", "bold", "30", "bg", "bold-cyan7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C8#!", "bold", "23", "bg", "bold-cyan8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V#!", "bold", "13", "bg", "bold-violet-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V1#!", "bold", "67", "bg", "bold-violet1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V2#!", "bold", "68", "bg", "bold-violet2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V3#!", "bold", "69", "bg", "bold-violet3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V4#!", "bold", "63", "bg", "bold-violet4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V5#!", "bold", "57", "bg", "bold-violet5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V6#!", "bold", "56", "bg", "bold-violet6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V7#!", "bold", "55", "bg", "bold-violet7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V8#!", "bold", "54", "bg", "bold-violet8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W#!", "bold", "255", "bg", "bold-white-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W1#!", "bold", "254", "bg", "bold-white1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W2#!", "bold", "253", "bg", "bold-white2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W3#!", "bold", "252", "bg", "bold-white3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W4#!", "bold", "251", "bg", "bold-white4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W5#!", "bold", "250", "bg", "bold-white5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W6#!", "bold", "249", "bg", "bold-white6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W7#!", "bold", "246", "bg", "bold-white7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W8#!", "bold", "243", "bg", "bold-white8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O#!", "bold", "9", "bg", "bold-orange-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O1#!", "bold", "174", "bg", "bold-orange1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O2#!", "bold", "216", "bg", "bold-orange2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O3#!", "bold", "215", "bg", "bold-orange3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O4#!", "bold", "214", "bg", "bold-orange4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O5#!", "bold", "208", "bg", "bold-orange5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O6#!", "bold", "202", "bg", "bold-orange6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O7#!", "bold", "166", "bg", "bold-orange7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O8#!", "bold", "130", "bg", "bold-orange8-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R#!", "bold", "1", "bg", "bold-red-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R1#!", "bold", "197", "bg", "bold-red1-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R2#!", "bold", "161", "bg", "bold-red2-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R3#!", "bold", "125", "bg", "bold-red3-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R4#!", "bold", "196", "bg", "bold-red4-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R5#!", "bold", "160", "bg", "bold-red5-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R6#!", "bold", "124", "bg", "bold-red6-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R7#!", "bold", "88", "bg", "bold-red7-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R8#!", "bold", "52", "bg", "bold-red8-background" ] ]

        let g:HighlightFilter_BaseColors = "none yellow green blue magenta cyan violet white orange red "

        let g:HighlightFilter_ColorIds = "N Y G B M C V W O R "
    else
        echom "HighlightMatch Term 16 config"

        highlight! HighlightFilter_ColorN cterm=none ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorY cterm=none ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorG cterm=none ctermbg=bg ctermfg=2
        highlight! HighlightFilter_ColorB cterm=none ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorM cterm=none ctermbg=bg ctermfg=5
        highlight! HighlightFilter_ColorC cterm=none ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorV cterm=none ctermbg=bg ctermfg=61
        highlight! HighlightFilter_ColorW cterm=none ctermbg=bg ctermfg=7
        highlight! HighlightFilter_ColorO cterm=none ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorR cterm=none ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorNB cterm=bold ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorYB cterm=bold ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorGB cterm=bold ctermbg=bg ctermfg=2
        highlight! HighlightFilter_ColorBB cterm=bold ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorMB cterm=bold ctermbg=bg ctermfg=5
        highlight! HighlightFilter_ColorCB cterm=bold ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorVB cterm=bold ctermbg=bg ctermfg=61
        highlight! HighlightFilter_ColorWB cterm=bold ctermbg=bg ctermfg=7
        highlight! HighlightFilter_ColorOB cterm=bold ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorRB cterm=bold ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorNU cterm=underline ctermbg=bg ctermfg=fg
        highlight! HighlightFilter_ColorYU cterm=underline ctermbg=bg ctermfg=3
        highlight! HighlightFilter_ColorGU cterm=underline ctermbg=bg ctermfg=2
        highlight! HighlightFilter_ColorBU cterm=underline ctermbg=bg ctermfg=4
        highlight! HighlightFilter_ColorMU cterm=underline ctermbg=bg ctermfg=5
        highlight! HighlightFilter_ColorCU cterm=underline ctermbg=bg ctermfg=6
        highlight! HighlightFilter_ColorVU cterm=underline ctermbg=bg ctermfg=61
        highlight! HighlightFilter_ColorWU cterm=underline ctermbg=bg ctermfg=7
        highlight! HighlightFilter_ColorOU cterm=underline ctermbg=bg ctermfg=9
        highlight! HighlightFilter_ColorRU cterm=underline ctermbg=bg ctermfg=1
        highlight! HighlightFilter_ColorNH cterm=none ctermbg=fg ctermfg=bg
        highlight! HighlightFilter_ColorYH cterm=none ctermbg=3 ctermfg=bg
        highlight! HighlightFilter_ColorGH cterm=none ctermbg=2 ctermfg=bg
        highlight! HighlightFilter_ColorBH cterm=none ctermbg=4 ctermfg=bg
        highlight! HighlightFilter_ColorMH cterm=none ctermbg=5 ctermfg=bg
        highlight! HighlightFilter_ColorCH cterm=none ctermbg=6 ctermfg=bg
        highlight! HighlightFilter_ColorVH cterm=none ctermbg=61 ctermfg=bg
        highlight! HighlightFilter_ColorWH cterm=none ctermbg=7 ctermfg=bg
        highlight! HighlightFilter_ColorOH cterm=none ctermbg=9 ctermfg=bg
        highlight! HighlightFilter_ColorRH cterm=none ctermbg=1 ctermfg=bg
        highlight! HighlightFilter_ColorNHB cterm=bold ctermbg=fg ctermfg=bg
        highlight! HighlightFilter_ColorYHB cterm=bold ctermbg=3 ctermfg=bg
        highlight! HighlightFilter_ColorGHB cterm=bold ctermbg=2 ctermfg=bg
        highlight! HighlightFilter_ColorBHB cterm=bold ctermbg=4 ctermfg=bg
        highlight! HighlightFilter_ColorMHB cterm=bold ctermbg=5 ctermfg=bg
        highlight! HighlightFilter_ColorCHB cterm=bold ctermbg=6 ctermfg=bg
        highlight! HighlightFilter_ColorVHB cterm=bold ctermbg=61 ctermfg=bg
        highlight! HighlightFilter_ColorWHB cterm=bold ctermbg=7 ctermfg=bg
        highlight! HighlightFilter_ColorOHB cterm=bold ctermbg=9 ctermfg=bg
        highlight! HighlightFilter_ColorRHB cterm=bold ctermbg=1 ctermfg=bg

        let g:HighlightFilter_ColorDefinitionList = []
        let g:HighlightFilter_ColorDefinitionList += [ [ "N", "none", "bg", "fg", "none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y", "none", "bg", "3", "yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G", "none", "bg", "2", "green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B", "none", "bg", "4", "blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M", "none", "bg", "5", "magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C", "none", "bg", "6", "cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V", "none", "bg", "61", "violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W", "none", "bg", "7", "white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O", "none", "bg", "9", "orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R", "none", "bg", "1", "red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N!", "bold", "bg", "fg", "bold-none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y!", "bold", "bg", "3", "bold-yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G!", "bold", "bg", "2", "bold-green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B!", "bold", "bg", "4", "bold-blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M!", "bold", "bg", "5", "bold-magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C!", "bold", "bg", "6", "bold-cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V!", "bold", "bg", "61", "bold-violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W!", "bold", "bg", "7", "bold-white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O!", "bold", "bg", "9", "bold-orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R!", "bold", "bg", "1", "bold-red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N_", "underline", "bg", "fg", "underline-none-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y_", "underline", "bg", "3", "underline-yellow-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G_", "underline", "bg", "2", "underline-green-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B_", "underline", "bg", "4", "underline-blue-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M_", "underline", "bg", "5", "underline-magenta-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C_", "underline", "bg", "6", "underline-cyan-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V_", "underline", "bg", "61", "underline-violet-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W_", "underline", "bg", "7", "underline-white-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O_", "underline", "bg", "9", "underline-orange-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R_", "underline", "bg", "1", "underline-red-foreground" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N#", "none", "fg", "bg", "none-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y#", "none", "3", "bg", "yellow-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G#", "none", "2", "bg", "green-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B#", "none", "4", "bg", "blue-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M#", "none", "5", "bg", "magenta-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C#", "none", "6", "bg", "cyan-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V#", "none", "61", "bg", "violet-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W#", "none", "7", "bg", "white-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O#", "none", "9", "bg", "orange-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R#", "none", "1", "bg", "red-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "N#!", "bold", "fg", "bg", "bold-none-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "Y#!", "bold", "3", "bg", "bold-yellow-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "G#!", "bold", "2", "bg", "bold-green-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "B#!", "bold", "4", "bg", "bold-blue-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "M#!", "bold", "5", "bg", "bold-magenta-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "C#!", "bold", "6", "bg", "bold-cyan-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "V#!", "bold", "61", "bg", "bold-violet-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "W#!", "bold", "7", "bg", "bold-white-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "O#!", "bold", "9", "bg", "bold-orange-background" ] ]
        let g:HighlightFilter_ColorDefinitionList += [ [ "R#!", "bold", "1", "bg", "bold-red-background" ] ]

        let g:HighlightFilter_BaseColors = "none yellow green blue magenta cyan violet white orange red "

        let g:HighlightFilter_ColorIds = "N Y G B M C V W O R "
    endif
endif
