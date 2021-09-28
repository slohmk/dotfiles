" -------
" VIMPLUG
" -------
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', {'name': 'dracula'}

call plug#end()

" ----------------
" GENERAL SETTINGS
" ----------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Color scheme
colorscheme dracula

" Enable type file detection.
filetype on

" Search
set nohlsearch "Do not highlight search phrases while not searching
set incsearch  "Enable incremental search
set ignorecase "Searches are case-insensitive

" Set common code editor properties
syntax on
set number

" Set extended code editor properties
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap

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

