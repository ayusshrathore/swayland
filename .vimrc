" Indentation
set autoindent
set expandtab
set smarttab
set tabstop=4

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Text Editing
filetype on
set showmatch
set wrap
set linebreak
set number
set cursorline
set confirm
set spell

" Color theme
packadd! dracula
syntax enable
set termguicolors
colorscheme dracula

" Plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  call plug#end()

" Key Bindings
" Normal Mode
nnoremap <C-s> <ESC>:w<CR> " Save
nnoremap <C-q> <ESC>:q<CR> " Quit
nnoremap <C-v> p           " Paste
nnoremap <C-x> d           " Cut
nnoremap <C-z> :u<CR>      " Undo
nnoremap x dd              " Delete a line

" Insert Mode
inoremap <C-s> <ESC>:w<CR> " Save
inoremap <C-q> <ESC>:q<CR> " Quit
inoremap <C-p> <ESC>pi     " Paste
inoremap <C-d> <ESC>ddi	   " Delete a line
inoremap <C-v> <ESC>"+pa   " Paste

" Visual Mode
vnoremap <C-s> <ESC>:w<CR> " Save   
vnoremap <C-q> <ESC>:q<CR> " Quit
vnoremap <C-v> c<ESC>"+p   " Paste
vnoremap x dd              " Delete a line
vnoremap <C-c> "+yi		   " Copy
vnoremap <C-x> d           " Cut



