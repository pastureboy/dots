set numberwidth=5
set number
set noswapfile
set guicursor=
set nuw=1
syntax on
set cursorline
map <C-a> <esc>ggVG<CR>
map <C-b> <esc>:Goyo<CR>
map <C-n> <esc>:Limelight!!<CR>

call plug#begin('~/local/share/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

let g:goyo_width = 50
let g:goyo_margin_top = 10
let g:goyo_margin_bottom = 10

let g:limelight_default_coefficient = 0

colorscheme wal
