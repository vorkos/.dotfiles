set nocompatible    " disable backwards compatibility with vi
syntax on
syntax enable
set number		" set row numbers on the left
set matchpairs+=<:>	" moving between two matching characters using % key. Defaults: (..), {..}, [..]
set cursorline

" sets on bottom right corner an indicator of pointer location - row number and character number within selected line. Also shows a percentage.
set ruler	

" number of lines between cursor and top/bottom of the page
set scrolloff=3

" search down into subfolders
" display all matching files when tab complete
set path+=**
set wildmenu

" changing the color of comments from dark blue to light blue, when using the default colorscheme
set background=dark

set incsearch		" starts searching while typing
set hlsearch		" hiighlight search results
set ignorecase		" ignores case of search results
nnoremap <C-l> :nohlsearch<CR><C-l>	"Ctrl-l to clear search result highlights

" turn off highlighting when in insert mode
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" completions list the possibilities and also fill in the longest common prefix
set wildmode=list:longest,full

" tabs
set expandtab
set tabstop=4

" persisten undo
set undofile
set undodir=$HOME/.vim/undo

" yank to system clipboard
set clipboard=unnamed
