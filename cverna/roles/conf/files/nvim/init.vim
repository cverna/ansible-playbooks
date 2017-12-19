".vimrc Clement Verna
"
"Solarized theme
syntax enable
syntax on
set background=dark

"
"Settings
"
set noerrorbells
set number
set showcmd
"set showmode

set noswapfile
set nobackup
set nowritebackup
set splitright
set splitbelow
set encoding=utf-8
set autoread
set laststatus=2
set hidden

set ruler           " Show the cursor position all the time
set fileformat=unix

set noshowmatch     "Do not show matching brackets by filckering
set incsearch       " Show the match while typing
set hlsearch        " Highlight found searches
set ignorecase 
set smartcase       " but not when search contains upper case characters

" Speed up syntax highlighting
set nocursorcolumn
set nocursorline

syntax sync minlines=256
set synmaxcol=300
set re=1

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Make Vim to handle long lines nicely.
set wrap
set textwidth=89
set formatoptions=qrn1

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" This comes first, because we have mappings that depend on leader
" With a map leader it's possible to do extra key combinations
" i.e: <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

"" key mapping
:nmap <leader>w :w<CR>
:imap <leader>w <ESC>:w<CR>

" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

:imap jk <ESC>

set laststatus=2
set statusline=%f%m%r%w\ (b%n)\ %l,%v\ [%Y/%{&ff}/%{&fileencoding}]

" ----------------------------------------- "
" File Type settings 			    		"
" ----------------------------------------- "

au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2<Paste>
au BufNewFile,BufRead *.html set ft=html ts=2 shiftwidth=2 expandtab

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
" autocmd BufEnter *.go colorscheme nofrils-dark

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab
" rust indent
autocmd BufNewFile,BufRead *.rs setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=90 smarttab expandtab
" remove trailling withespace on save for python files
autocmd BufWritePre *.py :%s/\s\+$//e
" flag unwanted white space
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
" flag line that exceed 90 char
highlight OverLength ctermbg=red guibg=darkred
match OverLength /\%90v.\+/
