" -----------------------------------------------------------------------------
"  GENERAL SETTINGS FOR EVERYONE
"  ----------------------------------------------------------------------------
filetype plugin indent on
set nocompatible
set autoindent
set nomodeline " disable modeline vulnerability

" text encoding
set encoding=utf8

" use 4 spaces for tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set backspace =indent,eol,start
set hidden
set laststatus =2

" Set linenumbers
set number

" column ruler at 100

" Highlight searching
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase


set autoread " autoread files
set mouse=a " use mouse for scroll or window size


vmap <OS-8> {
vmap <OS-9> }   

" -----------------------------------------------------------------------------
"  VIMTEX OPTIONS
"  ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

let g:livepreview_previewer = 'open -a Preview'

autocmd Filetype tex setl updatetime=1

" -----------------------------------------------------------------------------
"  APPEARANCE
"  ----------------------------------------------------------------------------
" set guifont=Sauce\ Code\ Pro\ Medium\ Nerd\ Font\ Complete\ Mono\ 12
syntax on
set background=dark
let g:onedark_termcolors=16

