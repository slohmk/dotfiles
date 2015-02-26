"Disable using vim in compatible mode
set nocompatible

"Pathogen
execute pathogen#infect()

"Unicode files
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

"Disable backup and swap files
"Backup and swap files can make the working directory very untidy
set noswapfile
set nobackup

"Hide buffers instead of closing
"This enable work on other files without saving the current buffer
set hidden

"UI settings
if has("gui_running")
    au GUIEnter * simalt ~x "Start GVIM maximised
    set guioptions-=m "Remove the Menu bar
    set guioptions-=T "Remove the Tool bar
    set guioptions-=r "Remove the right scrollbar
    set guioptions-=L "Remove the left scrollbar

    "Only run gVim in Windows environment!
    set guifont=Consolas:h11
    set guifontwide=SimHei:h11
else
    "This will fail in Windows CMD
    set t_Co=256
endif

colorscheme jellybeans
set number "Display line number
set ruler "Display the ruler - aka status bar at the bottom

"Behaviours
set backspace=indent,eol,start "VIM backspace to behave like other editors

"Search settings
set nohlsearch "Do not highlight search phrases
set incsearch "But highlight while searching
set ignorecase "Searches are case-insensitive

"Coding
filetype plugin indent on
syntax on
set autoindent "Indent nested codes automatically
set nowrap "No word wrap, coding does not require that!
set expandtab "Insert spaces when tab is pressed
set tabstop=4 "One tab = 4 spaces
set shiftwidth=4 "Number of spaces for indentation
set shiftround "Always indent/outdent to the nearest tabstop
set colorcolumn=81 "Right margin
