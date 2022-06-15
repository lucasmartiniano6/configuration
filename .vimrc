set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=blue

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
"auto indent for brackets
inoremap {<CR> {<CR>}<Esc>O
" easier write
nmap <leader>w :w!<cr>
" easier quit
nmap <leader>q :q<cr>

set term=screen-256color

"F9 compile c++
autocmd FileType cpp nnoremap <F9> :!g++ -std=c++17 -lm -Wall -O2 -static % -o %:r<CR>
"<leader>r execute c++
autocmd filetype cpp nnoremap <leader>r :!./%:r<CR>

"<leader>r execute python3
autocmd filetype python nnoremap <leader>r :!python3 %<CR>
