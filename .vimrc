syntax on

set tabstop=2  
set nocompatible
set background=dark
colorscheme onedark
let g:airline_theme='onedark'
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
set number
let g:airline_powerline_fonts = 1
autocmd VimEnter * NERDTree | wincmd p

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tribela/vim-transparent'
call plug#end()

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
