" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

set colorcolumn=120

" bse16 color scheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Use space characters instead of tabs.
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set ignorecase 
set hlsearch

" line number gutter 
set number
" set cursorline
hi CursorColumn ctermbg=8

set background=dark

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Cursor settings
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set ttimeout
set ttimeoutlen=1
set ttyfast

" allow click goto
set mouse=a

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
call plug#end()
