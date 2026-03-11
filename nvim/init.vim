set mouse=a "allows mouse interactions

"activating both shows the current line absolute position
set number "shows line number (absolute)
set relativenumber "shows relative line number to the current one
highlight LineNr ctermfg=yellow

syntax enable "code syntax highlight
"set cursorline "underlines the cursor/current line
set tabstop=4 "set tab on 4 spaces
set ruler "row and column on status bar


" Do not override terminal theme
set termguicolors

" Load custom colorscheme
colorscheme ebonite-kaki

" Ensure transparency after colorscheme
"highlight Normal guibg=NONE ctermbg=NONE
"highlight NonText guibg=NONE ctermbg=NONE
"highlight NormalFloat guibg=NONE ctermbg=NONE
"highlight SignColumn guibg=NONE ctermbg=NONE
"highlight LineNr guibg=NONE ctermbg=NONE
"highlight StatusLine guibg=NONE ctermbg=NONE
"highlight StatusLineNC guibg=NONE ctermbg=NONE

