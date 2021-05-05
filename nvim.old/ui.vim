" Section: UI

" Display absolute line numbers on current line and relative line numbers on other lines
set nu rnu

" Use number column as sign column for errors/warnings/suggestions
set scl=number

" Scrollover when moving vertically
set so=5

" Turn on the wild menu (enhanced command line completion)
set wmnu

" Ignore files in wildmode completions
set wig+=*/.git/*,*/obj/*

" Height of command bar
set ch=1

" Wrap at the end/start of line when navigating horizontally
set ww+=h,l

" Ignore case when searching
set ic

" Don't ignore case when search contains uppercase
set sc

" Info: anywhere in search use \/c to force ignore case and \/C to force
" case-sensitive search

" Do not update ui while executing macros
set lz

" Default to regex when searching
set magic

" Display matching brackets
set sm mat=2
