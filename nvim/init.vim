" Plugins
call plug#begin('~/.config/nvim/vimplug/')

Plug 'Omnisharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'junegunn/fzf'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'tpope/vim-fugitive' 

call plug#end()

syntax enable
filetype indent plugin on

let g:UltiSnipsExpandTrigger = pumvisible() ? "<Enter>" : "<S-Enter>"
call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))


let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-tab>'

" Asyncomplete keybindings
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" Disable the default Vim startup message.
set shortmess+=I

set diffopt+=vertical

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

" Replace tabs with spaces
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

" Use the newer stdio over http
let g:OmniSharp_server_stdio = 1
" Use system mono to run roslyn
let g:OmniSharp_server_use_mono = 1

" Override ale to only use OmniSharp linter
let g:ale_linters = { 'cs': ['OmniSharp'] }

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'csharp',
    \ 'allowlist': ['cs','csharp'],
    \ 'completor': function('asyncomplete#sources#OmniSharp#completor'),
    \ })

" Try to prevent bad habits (Arrow keys) in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
