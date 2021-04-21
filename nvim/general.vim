" Section: General

" Use system clipboard
set clipboard+=unnamedplus

" Command line history
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Check for external changes
set ar
au FocusGained,BufEnter * checktime

" Fast key combinations
let mapleader = ","

" Save with leader+w
nnoremap <leader>w :w<cr>

" Remove history stack slots
let g:netrw_dirhistmax=0
