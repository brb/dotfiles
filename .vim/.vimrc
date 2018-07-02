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
set textwidth=160
set colorcolumn=80
set spell
set autoindent
set smartindent
set showmatch
set nomodeline
set wrap
set ignorecase
"set list

set hlsearch
set smartcase
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

set laststatus=2
set ruler
set showcmd
set wildmenu

set scrolloff=1
set sidescrolloff=5
set display+=lastline

map  <C-A> <Home>
map  <C-E> <End>
imap  <C-A> <Home>
imap  <C-E> <End>

let mapleader = ","
nmap <F8> :NERDTreeToggle<CR>

" dissable <F1>:
nmap <F1> <nop>
imap <F1> <nop>
"
" dissable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" highligh trailing whitespaces and tabs
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/

set guifont=Monospace\ 9
set enc=utf-8
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=light
colorscheme solarized

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/

hi SpellBad guibg=#ff2929 ctermbg=224

syn on
filetype plugin on

" Python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd FileType python set ts=4 sw=4 expandtab
autocmd FileType python let g:SuperTabDefaultCompletionType = "context"

" Javascript
autocmd FileType javascript set ts=2 sw=2 expandtab

" HTML
autocmd FileType html set ts=2 sw=2 expandtab

" Go
autocmd FileType go set textwidth=120

" Sessions
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

map <Leader>sl :SessionList<cr>
map <Leader>sw :SessionSave<cr>

" Other
map <Leader>q :on<cr>

" Powerline
let g:Powerline_symbols = 'fancy'

" make
nnoremap <F5> :w<CR> :make<CR>
inoremap <F5> <Esc>:w<CR>:make<CR>
vnoremap <F5> :<C-U>:w<CR>:make<CR>

" ctags
set tags=./tags;/
nmap <Leader>, :TagbarToggle<cr>
nmap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" vimwiki
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.wiki': 'media'}
let g:vimwiki_list = [{'path': '~/wiki/', 'syntax': 'markdown', 'ext' : '.md'}]

" swap files dir
set backupdir=~/.vimtmpdir,.
set directory=~/.vimtmpdir,.

" Markdown
autocmd FileType markdown map gf :e <cfile><cr>
autocmd FileType markdown set textwidth=79

" tudu.txt
function! MarkdownLevel()
    if getline(v:lnum) =~ '^## .*$'
        return ">1"
    endif
    return "="
endfunction
autocmd FileType tudu set foldmethod=expr
autocmd FileType tudu set foldexpr=MarkdownLevel()

" reads.md
au BufRead,BufNewFile reads.md set filetype=reads
autocmd FileType reads set foldmethod=expr
autocmd FileType reads set foldexpr=MarkdownLevel()
autocmd FileType reads set textwidth=160

" linux kernel
function LinuxFormatting()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal softtabstop=8
    setlocal textwidth=80
    setlocal noexpandtab
endfunction

let g:linuxsty_patterns = [ "kernel-upstream", "kernel-brb", "linux" ]

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" CtrlP
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](vendor)$',
    \ }

" rusty-tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
"autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
