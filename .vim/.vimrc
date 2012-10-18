" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Global
set history=9999
set enc=utf-8
set novisualbell

set nocompatible
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set modeline
set modelines=1
set mouse=a
set number
set expandtab
set textwidth=79

set autoindent
set showmatch
set nomodeline
set nohlsearch
set wrap

map <F8> <Esc>:w<cr>
imap <F8> <Esc>:w<cr>i
map  <C-A> <Home>
map  <C-E> <End>
imap  <C-A> <Home>
imap  <C-E> <End>

let mapleader = ","
map <Leader>, :NERDTreeToggle<cr>
map <Leader><Left> :wincmd h<cr>
map <Leader><Right> :wincmd l<cr>
map <Leader><Up> :wincmd k<cr>
map <Leader><Down> :wincmd j<cr>

" dissable <F1>:
nmap <F1> <nop>
imap <F1> <nop>
"
" dissable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" tabs
map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

set guifont=Monospace\ 9
set enc=utf-8
set background=dark

"if has("gui_running")
"set guioptions=n
"endif

let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" Common options for programming

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

syn on
filetype plugin on

" Python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd FileType python set ts=4 sw=4 expandtab
autocmd FileType python let g:SuperTabDefaultCompletionType = "context"

map <Leader>p :!python %<cr>

" HTML
autocmd FileType html set ts=2 sw=2 expandtab

" Status bar
set laststatus=2
set statusline=%<%F%=\ [%M%R%H%Y]\ (%(%l,%c%))

" Sessions
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

map <Leader>sl :SessionList<cr>
map <Leader>sw :SessionSave<cr>

" Commant-T
set wildignore=*.beam,.git,*.png,*.css,priv/*
