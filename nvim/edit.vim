" Section: Editing mappings

" Alt+[jk] to move lines in normal and visual modes
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Before buffer write, trim white spaces for certain filetypes
au BufWritePre *.cs,*.sql,*.fish,*.sh,*.vim,*.txt,*.lua,*.py :%s/\s\+$//e
