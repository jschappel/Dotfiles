" Enable Mouse
set mouse=a

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont Monospace:h10
    "GuiFont {font_name}:h{size}
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Airline stuff
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='gruvbox'

" OCaml
set rtp^="/home/joshua/.opam/default/share/ocp-indent/vim"


" Haskell
let g:ale_linters = {'haskell': ['cabal_ghc', 'ghc-mod', 'hdevtools', 'hie', 'hlint', 'stack_build', 'stack_ghc']}

" ** My settings
syntax on

" autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set number "Line Number
set showcmd "Show command
set wildmenu "Auto complete menu
set showmatch "Hightlight matching braces

" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set wrap

" Search tweaks
set ignorecase
set smartcase
set incsearch
set hlsearch
silent!
