"------------------------------------------------------------
" VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" Bundle that I use
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-sensible'
"--------------------------------------------------------------

" SETTINGS
set nocompatible
set hidden
set hlsearch
set ignorecase
set smartcase
set visualbell
set confirm
set mouse=a
set number
set infercase " Ignore case in autocompletion
set nostartofline " Stop certain movements from always going to the first character of a line.
set pastetoggle=<F11> " Use <F11> to toggle between 'paste' and 'nopaste'
"-- Indentation settings for using 4 spaces instead of tabs.
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set showmatch
set smarttab
" --
set esckeys " Allow cursor keys in insert mode
set ttyfast " Optimize for fast terminal connections
set binary " Don't add empty newlines at the end of files
set noeol
"-- Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
"--
set cursorline " Highlight current line
set list
set showmode
set title
set t_Co=256
set background=dark
colorscheme solarized
"-----------------------------------------------------------

" PLUGINS
	" NERDTree
	map <C-n> :NERDTreeToggle<CR> " Mapping for opening NERDTree

	" CTRL + p
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_max_files = 0 " Set no max file limit
	let g:ctrlp_working_path_mode = 0 " Search from current directory instead of project root
	map <C-B> :CtrlPBuffer<CR> " Buffer Listing

"------------------------------------------------------------

" CUSTOM MAPPINGS/REMAPPINGS
	" Disable Arrow Keys
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>

	" Save a file as root (\W)
	noremap <leader>W :w !sudo tee % > /dev/null<CR>

" ------------------------------------------------------------