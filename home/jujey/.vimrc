set numberwidth=5
set noswapfile
set guicursor=
set nuw=1
syntax on
set cursorline
map <C-s> <esc>:set nu<CR>
map <C-d> <esc>:set nonu<CR>
map <C-a> <esc>ggVG<CR>
map <C-b> <esc>:Goyo<CR>
map <C-n> <esc>:Limelight!!<CR>

call plug#begin('~/local/share/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

hi User1 ctermfg=none ctermbg=0
hi User2 ctermfg=5 ctermbg=none
hi User3 ctermfg=0 ctermbg=5
hi User4 ctermfg=5 ctermbg=0
hi User5 ctermfg=6 ctermbg=none
hi User6 ctermfg=0 ctermbg=6
hi User7 ctermfg=0 ctermbg=none
hi User8 ctermfg=6 ctermbg=0
hi User9 ctermfg=none ctermbg=none

let g:goyo_width = 50
let g:goyo_margin_top = 10
let g:goyo_margin_bottom = 10

let g:limelight_default_coefficient = 0

colorscheme wal
