syntax enable
filetype indent plugin on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Show relative line numbers
set relativenumber

" Always show the status line at the bottom 
set laststatus=2

" Always show lines when on scrolling onto the bottom line
set scrolloff=3

" Backspace over anything (chars before insert point)
set backspace=indent,eol,start

" Hide unsaved buffers
set hidden

" Use X clipboard
set clipboard=unnamedplus

" Replace tab with spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Search case insensitive
set ignorecase

" Highlight search matches
set smartcase

" Search during typing 
set incsearch

" Key Bindings

" Unbind Ex mode
nmap Q <Nop> 

" Disable audible bell 
set noerrorbells visualbell t_vb=

" Try to prevent bad habits (Arrow keys)
" in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Plugins
call plug#begin('~/.config/nvim/vimplug/')

" Language client
" Plug 'prabirshrestha/asyncomplete.vim'
" 
" " Linter
" Plug 'w0rp/ale'
" 
" Plug 'tpope/vim-dispatch' | Plug 'Shougo/vimproc.vim'
" 
" " Snippet
" 
" " C#
" Plug 'OmniSharp/omnisharp-vim' | Plug 'nickspoons/vim-sharpenup' | Plug 'prabirshrestha/vim-lsp' | Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

