set nocompatible
set encoding=UTF-8

colorscheme kolor
syntax enable
set cursorline

set number

set hls

set tabstop=4
set shiftwidth=4

set backspace=indent,eol,start

set laststatus=2

set ruler

set smartindent
set shiftround

set undofile
set undodir=~/.vim/undo

set autoread

set hidden

let mapleader = ' '

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

call plug#end()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline_powerline_fonts = 1

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

nnoremap <silent> <leader>r :let @/ = ""<cr>
nnoremap <silent> <leader><tab> <c-w><c-w>
nnoremap <silent> <leader>ue :UltiSnipsEdit<cr>
nnoremap <leader>ul :e ~/.vim/plugged/vim-snippets/UltiSnips/
nnoremap <leader>us :e ~/.vim/plugged/vim-snippets/snippets/
nnoremap <silent> <leader>p :set paste!<cr>
nnoremap <silent> <tab> :bn<cr>
nnoremap <silent> <s-tab> :bp<cr>

map j gj
map k gk

imap jk <esc>
imap kj <esc>
cmap jk <esc>
cmap kj <esc>

augroup setft
	au!
	au BufNewFile,BufRead *.kt set ft=kotlin
	au BufNewFile,BufRead *.gradle set ft=groovy
	au BufNewFile,BufRead *.fr set ft=frege
	au BufNewFile,BufRead *.jsp set ft=html.jsp
augroup END

augroup settab
	au!
	au FileType haskell,jsp set et
	au FileType sh,perl,tex set et shiftwidth=2 tabstop=2
augroup END
