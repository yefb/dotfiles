" Deletes the compatibility with vi
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its contents.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Re-use the same window and switch from an unsaved buffer without saving it first
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch
set incsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Ignore case in autocompletion
set infercase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Raise a dialogue asking to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set showmatch
set smarttab

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Allow cursor keys in insert mode
set esckeys

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Don't add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
 " set undodir=~/.vim/undo
endif

" Highlight current line
set cursorline

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title

" Save a file as root (\W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>


"------------------------------------------------------------

" VUNDLE

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" My bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'bling/vim-airline'

colorscheme solarized

" Open NERDTree on CTRL + n
map <C-n> :NERDTreeToggle<CR>

" CTRL + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 'ra'
" Buffer Listing
map <C-B> :CtrlPBuffer<CR>

" Hide Windows EOL
set fileformats=unix,dos

" Disable Arrow Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set t_Co=256