" === NAVIGATION === "
syntax on
syntax enable
set number		"Set row numbers on the left
set matchpairs+=<:>	"Moving between two matching characters using % key. Defaults: (..), {..}, [..]
set cursorline
set ruler		"Sets on bottom right corner an indicator of pointer location - row number and character number within selected line. Also shows a percentage.
set scrolloff=3		"Number of lines between cursor and top/bottom of the page

" === COLOR === "
"changing the color of comments from dark blue to light blue, when using the default colorscheme
set background=dark

" === SEARCH === "
set incsearch		"Starts searching while typing
set hlsearch		"Hiighlight search results
set ignorecase		"Ignores case of search results
nnoremap <C-l> :nohlsearch<CR><C-l>	"Ctrl-l to clear search result highlights

"Turn off highlighting when in insert mode
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" === COMPLETION === "
"Completions list the possibilities and also fill in the longest common prefix
set wildmode=list:longest,full

" tabs
set expandtab
set tabstop=4

" === HINTS & SHORTCUTS === "

" --- yank --- "

"yas, yap		Copy entire sentence, paragraph the cursor is inside
"ya{			Copy entire block of text inside block delimeters - {}, (), [], <>, \"", ''. ``

" --- visual-block mode --- "
"<CTRL-V>{motion}I{text} 	Inserts {text} before block on every line
"<CTRL-V>{motion}A{text}	Appends {text} after block on every line
"<CTRL-V>{motion}c{text}	Changes every line of block to {text}
"<CTRL-V>{motion}r{char}	Changes every character of block to {char}
