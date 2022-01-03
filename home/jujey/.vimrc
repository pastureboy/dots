set numberwidth=5
set noswapfile
set guicursor=
set nuw=1
syntax on
set mouse=a
set mouse=n
set hlsearch
set number
"set spell
autocmd VimEnter * SoftPencil

map <C-d> <esc>:set relativenumber<CR>
map <C-s> <esc>:set norelativenumber<CR>
map <C-a> <esc>ggVG<CR>
map <C-b> <esc>:Goyo<CR>
map <C-n> <esc>:Limelight!!<CR>

set laststatus=2
set statusline+=\ %F\ 
set statusline+=%#Normal#
set statusline+=%=\ 
set statusline+=%#PmenuSel#
set statusline+=\ %p\%%\ 
set statusline+=%=\ 
set statusline+=%#LineNr#
set statusline+=%#Search#
set statusline+=\ \ %v\ \ 
set statusline+=%#Todo#
set statusline+=\ %l\ ->\ %L\ 

call plug#begin('~/local/share/nvim/plugged')
Plug 'reedes/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'nessss/vim-gml'
call plug#end()

let g:goyo_width = 60
let g:goyo_margin_top = 10
let g:goyo_margin_bottom = 10

let g:limelight_default_coefficient = 0

set nocompatible
filetype plugin on

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

colorscheme wal
