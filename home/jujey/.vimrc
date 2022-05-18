set noswapfile
set guicursor=
syntax on
set mouse=a
set mouse=n
set hlsearch
set tabstop=4
set shiftwidth=0
set expandtab
set relativenumber
set number
"set spell
set cursorline
colorscheme wal

hi LineNr ctermfg=darkgrey
hi CursorLine term=bold cterm=bold ctermbg=10 ctermfg=0
hi CursorLineNr term=bold cterm=bold

map <C-d> <esc>:set relativenumber<CR> <esc>:set number<CR>
map <C-s> <esc>:set norelativenumber<CR> <esc>:set nonumber<CR>
map <C-a> <esc>ggVG<CR>
map <C-b> <esc>:Goyo<CR> <esc>:highlight LineNr ctermfg=darkgrey<CR> <esc>:highlight CursorLine term=bold cterm=bold ctermbg=10 ctermfg=0<CR> <esc>:highlight CursorLineNr term=bold cterm=bold<CR>
map <C-n> <esc>:Limelight!!<CR>

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\ 
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

call plug#begin('~/local/share/nvim/plugged')
Plug 'reedes/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'nessss/vim-gml'
call plug#end()

let g:goyo_width = 60
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0

let g:limelight_default_coefficient = 0
let g:limelight_conceal_ctermfg = 'darkgrey'
let g:limelight_conceal_ctermfg = 240

set nocompatible
filetype plugin on

autocmd VimEnter * SoftPencil
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END
