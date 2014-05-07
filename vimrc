" disable vi compatible mode
set nocompatible

" set filetype detection, plugin and indent on
filetype plugin indent on

" set eye candies
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
    colorscheme ir_black
endif

" show line numbers and show info at bottom
set number
set ruler

" tabs and whitespaces
set tabstop=4
set shiftwidth=4
set shiftround      " always indent/outdent to the nearest tabstop
set expandtab       " use spaces instead of tabs
set autoindent

" search settings
set nohlsearch      " do not highlight search phrases
set incsearch       " but highlight while searching
set ignorecase      " searches are case-insensitive

" for coding
syntax enable       " enable syntax highlighting
set nowrap          " do not wrap text
set colorcolumn=81  " show a red margin on the right limit
if has('autocmd')
    " highlight extra whitespaces
    highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
    autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
endif
