" -------
" VIMPLUG
" -------
call plug#begin('~/.vim/plugged')

" Color schemes
Plug 'dracula/vim', {'name': 'dracula'}
Plug 'jnurmine/Zenburn', {'name': 'zenburn'}

call plug#end()

" ----------------
" GENERAL SETTINGS
" ----------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Color scheme
colorscheme zenburn

" Enable type file detection.
filetype on
set encoding=utf-8

" Search
set nohlsearch "Do not highlight search phrases while not searching
set incsearch  "Enable incremental search
set ignorecase "Searches are case-insensitive

" ------------
" KEY BINDINGS
" ------------

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with spacebar
nnoremap <space> za

" -----------
" PROGRAMMING
" -----------

" Set common code editor properties
syntax on
set number
set colorcolumn=81,121

" Set extended code editor properties
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" *** Web development ***
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" *** Python ***
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

