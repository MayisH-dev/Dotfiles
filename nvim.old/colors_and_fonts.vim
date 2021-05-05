" Section: Colors and fonts

" Syntax highlighting
syntax enable

" Section: Files, backups and undo

" Turn off backups, git tracks already
set nowb noswf

" Section: Text, tab and indents

" Use space instead of tabs
set et

" Only at the beginning of line
set sta

" Tab = 4 spaces
set shiftwidth=4 ts=4

" Line break (no breaks on longer lines)
set lbr tw=150

" Smart indent (on new lines) wrap long lines (only changes display)
set si wrap

" Number of cols to scroll horizontally
set ss=5

" Add line start/end display chars
set lcs+=precedes:<,extends:>
