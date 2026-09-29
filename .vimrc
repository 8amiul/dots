" ===============================
"        BASIC SETTINGS
" ===============================

set nocompatible
filetype plugin indent on
syntax on

set encoding=utf-8
set number              " Show line numbers
set relativenumber      " Relative numbers for fast movement
set cursorline          " Highlight current line
set showcmd             " Show command in bottom
set showmode            " Show mode (INSERT/NORMAL)
set ruler               " Show cursor position
set mouse=a             " Enable mouse
set clipboard=unnamed   " Use system clipboard
set hidden              " Allow switching buffers without saving
set wildmenu            " Better command completion
set wrap                " Wrap long lines
set linebreak           " Break at words

" ===============================
"        INDENTATION
" ===============================

set tabstop=4
set shiftwidth=4
set expandtab           " Use spaces instead of tabs
set smartindent
set autoindent

" ===============================
"        SEARCH SETTINGS
" ===============================

set ignorecase
set smartcase
set incsearch
set hlsearch

" Press space to clear search highlight
nnoremap <leader>h :nohlsearch<CR>

" ===============================
"        UI IMPROVEMENTS
" ===============================

colorscheme zaibatsu


if has("gui_running")
    set guifont=Consolas:h12
endif

set scrolloff=8         " Keep 8 lines visible above/below cursor
set sidescrolloff=8

" ===============================
"        PERFORMANCE
" ===============================

set updatetime=300
set lazyredraw

" ===============================
"        KEY REMAPS
" ===============================

let mapleader=" "

" Fast save & quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" Open file explorer
nnoremap <leader>e :Ex<CR>

" Toggle relative numbers
nnoremap <leader>n :set relativenumber!<CR>

" Move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" ===============================
"        BACKUP & UNDO (Windows safe)
" ===============================

set undofile
set undodir=~/.vim/undodir
set nobackup
set nowritebackup
set noswapfile

" Create undo folder if missing
if !isdirectory(expand("~/.vim/undodir"))
    call mkdir(expand("~/.vim/undodir"), "p")
endif

" ===============================
"        FILETYPE SPECIFIC
" ===============================

autocmd FileType c,cpp setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType html,css,javascript setlocal shiftwidth=2 tabstop=2

" ===============================
"        STATUS LINE
" ===============================

set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ %y
set statusline+=\ [%{&fileencoding}]
set statusline+=\ %p%%
set statusline+=\ %l:%c
