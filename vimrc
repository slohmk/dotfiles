call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'elzr/vim-json'
"Plug 'tpope/vim-surround'
call plug#end()

" Save automatically when :make is called
set autowrite

" Disable backup and swap files
" Backup and swap files can make the working directory very untidy
set noswapfile
set nobackup

" Hide buffers instead of closing
" This enable work on other files without saving the current buffer
set hidden

" Common editor behaviours
set backspace=indent,eol,start "vim backspace to behave like other common editors

" Search settings
set nohlsearch "Do not highlight search phrases while not searching
set incsearch  "But highlight while searching
set ignorecase "Searches are case-insensitive

" Common settings for coding
filetype plugin indent on
syntax on
set autoindent     "Indent nested codes automatically
set nowrap         "No word wrap, coding does not require that!
set expandtab      "Insert spaces when tab is pressed
set tabstop=4      "Render 4 spaces per tab
set shiftwidth=4   "Number of spaces for indentation
set shiftround     "Always indent/outdent to the nearest tabstop
set colorcolumn=81 "Right ruler margin
set number         "Display line number
set ruler          "Display the status bar at the bottom of screen
let mapleader=","  "Remap leader key from default '\' to ','

" General key remaps
nnoremap <Space> za

" ********
" vim-json
" ********
let g:vim_json_syntax_conceal=0
nmap =j :%!python -m json.tool<CR>

" ********
" vim-go
" ********
" Whitespace settings
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" Key remaps
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd Filetype go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>i <Plug>(go-info)
autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd FileType go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd FileType go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd FileType go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
	let l:file=expand('%')
	if l:file=~#'^\f\+_test\.go$'
		call go#test#Test(0,1)
	elseif l:file=~#'^\f\+\.go$'
		call go#cmd#Build(0)
	endif
endfunction

" Enable highlighting
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_methods=1
let g:go_highlight_operators=1
let g:go_highlight_extra_types=1
let g:go_highlight_build_constraints=1
let g:go_highlight_generate_tags=1

" Always use quickfix window
let g:go_list_type="quickfix"

" Turn off auto-format on save, to avoid diff disaster
let g:go_fmt_autosave=0

" Import missing paths in Go file on save
" This will not work while g:go_fmt_autosave=0
let g:go_fmt_command="goimports"

" Use camelCase instead of snake_case when annotating JSON to structs.
let g:go_addtags_transform = "camelcase"

" Display type info automatically
let g:go_auto_type_info=1
set updatetime=100

" Highlights same identifiers automatically
let g:go_auto_sameids=0

" Enable to switch back to old implementation of 'go to definition' using
" 'godef'. This is usually due to performance, godef is faster.
"let g:go_def_mode = 'godef'

