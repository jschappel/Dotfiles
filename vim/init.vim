syntax on
filetype plugin indent on

set mouse=a
set number "Line Number
set showcmd "Show command
set wildmenu "Auto complete menu
set showmatch "Hightlight matching braces
set clipboard=unnamedplus

" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set wrap

" Search tweaks
set incsearch
set hlsearch
set ignorecase
set smartcase


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Load in plugins.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'neovimhaskell/haskell-vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" Ale Configs
let g:ale_linters = {
      \'haskell': ['cabal_ghc', 'ghc-mod', 'hdevtools', 'hie', 'hlint', 'stack_build', 'stack_ghc'],
      \'ocaml': ['ocamlformat'],
      \'*': ['remove_trailing_lines', 'trim_whitespace'],
      \'python' : ['flake8'],
\}

" Vim javascript Stuff
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


" Enable Airline stuff
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_theme='tomorrow'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" change the way buffers are shown
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:netrw_browsex_viewer= "xdg-open"

"" Ocaml ale setup
if (has("ocaml"))
  let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
endif

" Keybindings
noremap <silent>,<space> :nohlsearch<CR>

" Set Colorscheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
" colorscheme PaperColor


nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"hi CursorLineNR cterm=bold
"augroup CLNRSet
"    autocmd! ColorScheme * hi CursorLineNR cterm=bold
"augroup END

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
"highlight MatchParen cterm=underline ctermbg=green ctermfg=blue
