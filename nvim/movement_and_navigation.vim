" Section: Moving around tabs, windows and buffers

" 0 to go to the first non-blank character
noremap 0 ^

" Space to forward search, Ctrl+Space backwards search
noremap <space> /
noremap <C-space> ?

" Leader+Enter to disable highlight
noremap <silent> <leader><cr> :noh<cr>

" Ctrl+[hjkl] to switch windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-j> <C-W>h
noremap <C-l> <C-W>l

" Leader+bd to close current buffer
noremap <leader>bd :Bclose<cr>:tabc<cr>gT

" Leader+ba to close all buffers
noremap <leader>ba :bufdo bd<cr>

" Leader+[hl] to navigate buffers
noremap <leader>l :bn<cr>
noremap <leader>h :bp<cr>

" Leader+tn to create new empty tab
noremap <leader>tn :tabe<cr>
" Leader+to to close all other tabs
noremap <leader>to :tabo<cr>
" Leader+tc to close tab
noremap <leader>tc :tabc<cr>
" Leader+tm to move tab
noremap <leader>tm :tabm
" Leaber+t+Leader to navigate tab
noremap <leader>t<leader> :tabnext

" Leader+tl to toggle between last accessed tab in normal mode
let g:lasttab = 1
nnoremap <leader>tl :exe"tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Leader+te open new tab with current buffer's path
noremap <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Leader+cd switch working directory to the directory of current buffer
noremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Switch to existing tab if same buffer is open, open in new tab otherwise
set swb=useopen,usetab,newtab

" Return to last edit position when opening files
au BufRead * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Leader + ev to edit neovim configuration
:nnoremap <leader>ev :vsplit $MYVIMRC <cr>

" Leader + sv to source neovim configuration
:nnoremap <leader>sv :source $MYVIMRC <cr>
