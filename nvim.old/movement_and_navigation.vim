" Section: Moving around tabs, windows and buffers

" 0 to go to the first non-blank character
noremap 0 ^

" Leader+Enter to disable highlight
noremap <silent> <leader><cr> :noh<cr>

" Ctrl+[hjkl] to switch windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Leader+bd to close current buffer
noremap <silent> <leader>bd :Bclose<cr>:tabc<cr>gT

" Leader+ba to close all buffers
noremap <silent> <leader>ba :bufdo bd<cr>

" Leader+[hl] to navigate buffers
noremap <leader>l :bn<cr>
noremap <leader>h :bp<cr>

" Leader+tn to create new empty tab
noremap <silent> <leader>tn :tabe<cr>
" Leader+to to close all other tabs
noremap <silent> <leader>to :tabo<cr>
" Leader+tc to close tab
noremap <silent> <leader>tc :tabc<cr>
" Leader+tm to move tab
noremap <silent> <leader>tm :tabm
" Leaber+t+Leader to navigate tab
noremap <silent> <leader>t<leader> :tabnext

" Leader+tl to toggle between last accessed tab in normal mode
let g:lasttab = 1
nnoremap <silent> <leader>tl :exe"tabn ".g:lasttab<cr>
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

nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
