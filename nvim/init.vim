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
nmap <leader>w :w<cr>

" Remove history stack slots
let g:netrw_dirhistmax=0

" Section: UI

" Display absolute line numbers on current line and relative line numbers on other lines
set nu
set rnu

" Scrollover when moving vertically
set so=5

" Turn on the wild menu (enhanced command line completion)
set wmnu

" Ignore files in wildmode completions
set wig+=*/.git/*,*/bin/*,*/obj/*

" Show current row/col position
set ru

" Height of command bar
set ch=1

" Wrap at the end/start of line when navigating horizontally
set ww+=h,l

" Ignore case when searching
set ic

" Don't ignore case when search contains uppercase
set sc

" Anywhere in search use \/c to force ignore case and \/C to force
" case-sensitive search

" Do not update ui while executing macros
set lz

" Default to regex when searching
set magic

" Display matching brackets
set sm
set mat=2

" Left margin
" set fdc=1

" Section: Colors and fonts

" Syntax highlighting
syntax enable

" Section: Files, backups and undo

" Turn off backups, git tracks already
set nowb
set noswf

" Section: Text, tab and indents

" Use space instead of tabs
set et

" Only at the beginning of line
set sta

" Tab = 4 spaces
set shiftwidth=4
set ts=4

" Line break (defaul textwidth=78, no breaks on longer lines)
set lbr
set tw=150

set si   " Smart indent (on new lines)
set wrap " Wrap long lines (only changes display)

" Number of cols to scroll horizontally
set ss=5
" Add line start/end display chars
set lcs+=precedes:<,extends:>

" Section: Visual mode

" In visual mode press * or # to search only selection
" vnoremap <silent> * :<C-u>call VisualSelection('','')<CR>/<C-R>=@/<CR><CR>
" vnoremap <silent> # :<C-u>call VisualSelection('','')<CR>/<C-R>=@/<CR><CR>

" Section: Moving around tabs, windows and buffers

" Space to forward search, Ctrl+Space backwards search
map <space> /
map <C-space> ?

" Leader+Enter to disable highlight
map <silent> <leader><cr> :noh<cr>

" Ctrl+[hjkl] to switch windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-j> <C-W>h
map <C-l> <C-W>l

" Leader+bd to close current buffer
map <leader>bd :Bclose<cr>:tabc<cr>gT

" Leader+ba to close all buffers
map <leader>ba :bufdo bd<cr>

" Leader+[hl] to navigate buffers
map <leader>l :bn<cr>
map <leader>h :bp<cr>

" Leader+tn to create new empty tab
map <leader>tn :tabe<cr>
" Leader+to to close all other tabs
map <leader>to :tabo<cr>
" Leader+tc to close tab
map <leader>tc :tabc<cr>
" Leader+tm to move tab
map <leader>tm :tabm
" Leaber+t+Leader to navigate tab
map <leader>t<leader> :tabnext

" Leader+tl to toggle between last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe"tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Leader+te open new tab with current buffer's path
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Leader+cd switch working directory to the directory of current buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Switch to existing tab if same buffer is open, open in new tab otherwise
set swb=useopen,usetab,newtab

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Section: Status line
set statusline=\ %F%m%r%h\ %w\ \ WorkDir:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Section: Editng mappings

" 0 to first non-blank character
map 0 ^

" Alt+[jk] to move lines in normal and visual modes
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Before buffer write, trim white spaces for certain filetypes
au BufWritePre *.cs,*.sql,*.fish,*.sh,*.vim,*.txt,*.lua,*.py :%s/\s\+$//e

" Section: Spell checking

" <leader>ss to toggle spell checking
map <leader>ss :setlocal spell!<cr>

" <leader>sn to navigate to next misspelled word
" map <leader>sn ]s
" <leader>sp to navigate to previous misspelled word
" map <leader>sp [s
" <leader>sa to add word to dictionary
" map <leader>sa zg
" <leader>s? to suggest alternative for misspelled word
" map <leader>s? z=

" Section: Misc

" <leader>q to open a scribble buffer
map <leader>q :e ~/buffer<cr>

" ========================= "
" Section: Helper functions "
" =========================="

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

" function! VisualSelection(direction, extra_filter) range
"     let l:saved_reg = @"
"     execute "normal! vgvy"
"
"     let l:pattern = escape(@", "\\/.*'$^~[]")
"     let l:pattern = substitute(l:pattern, "\n$", "", "")
"
"     if a:direction == 'gv'
"         call CmdLine("Ack '" . l:pattern . "' " )
"     elseif a:direction == 'replace'
"         call CmdLine("%s" . '/'. l:pattern . '/')
"     endif
"
"     let @/ = l:pattern
"     let @" = l:saved_reg
" endfunction
