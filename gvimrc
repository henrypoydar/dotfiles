set lines=50
set columns=150
set linespace=3
colorscheme clouds_midnight
if &background == "dark"
    "hi normal guibg=black
    set transp=1
endif
set gfn=Menlo\ Regular:h15
set guioptions=egmrt
set guioptions-=r " Don't show right scrollbar
set showtabline=2
" Full screen should be full screen
" Uncomment second line to enter full screen on launch
set fuoptions=maxvert,maxhorz
"au GUIEnter * set fullscreen

