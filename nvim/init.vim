" Share clipboard with OS
set clipboard+=unnamedplus

" Behaviours: Disable swap file
set noswapfile

" Behaviour: Disable conventional arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Feature: Undo trees
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" Visuals
set number
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

