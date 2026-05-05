"Save with:
"	mkdir -p ~/.config/nvim/colors
"	vim ~/.config/nvim/colors/ebonite-kaki.vim
set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'ebonite-kaki' "theme name

hi Normal         guifg=#ffffff guibg=NONE      ctermfg=15 ctermbg=NONE
hi NonText        guifg=light-grey guibg=NONE   ctermfg=8  ctermbg=NONE
hi NormalFloat    guibg=NONE                    ctermbg=NONE
hi SignColumn     guibg=NONE                    ctermbg=NONE
hi LineNr         guifg=yellow guibg=NONE       ctermfg=8  ctermbg=NONE
hi StatusLine     guifg=#00ff00 guibg=NONE      ctermbg=NONE
hi StatusLineNC   guibg=NONE                    ctermbg=NONE
hi MsgArea        guibg=NONE                    ctermbg=NONE
hi MsgSeparator   guibg=NONE                    ctermbg=NONE

" Kate theme syntax colors
hi Comment        guifg=magenta gui=italic     ctermfg=8
hi Constant       guifg=#00ff00 guibg=#005500 gui=bold  ctermfg=10 ctermbg=22
hi String         guifg=#00ff00                 ctermfg=10
hi Function       guifg=#af81ff guibg=#55007f gui=bold  ctermfg=141 ctermbg=55
hi Keyword        guifg=#ff557f gui=bold       ctermfg=205
hi Type           guifg=#00ffff gui=bold       ctermfg=14
hi Identifier     guifg=#f67400                 ctermfg=208
hi PreProc        guifg=#ffaa7f                 ctermfg=216
hi Error          guifg=#da4453 gui=underline  ctermfg=167

" UI elements
hi CursorLine     guibg=#2f2f2f                 ctermbg=236
hi CursorLineNr   guifg=#ffff00                 ctermfg=11
hi Search         guibg=#00aa00                 ctermbg=34
hi Visual         guibg=#626200                 ctermbg=100


