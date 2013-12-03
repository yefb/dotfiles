"------------------------------------------------------------

" VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
" Bundles that I use
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "tomtom/tlib_vim"
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'godlygeek/tabular'
Bundle 'joonty/vim-phpqa.git'
" Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'spiiph/vim-space'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

"--------------------------------------------------------------

" SETTINGS
set background=dark
set cc=80,120
set confirm
set cursorline " Highlight current line
set esckeys " Allow cursor keys in insert mode
set hidden
set hlsearch
set ignorecase
set infercase " Ignore case in autocompletion
set list
set mouse=a
set nocompatible
set noeol
set nostartofline " Stop certain movements from always going to the first character of a line.
set number
set pastetoggle=<F11> " Use <F11> to toggle between 'paste' and 'nopaste'
set showmatch " When a bracket is inserted, briefly jump to the matching one
set showmode
set smartcase
"-- Indentation settings for using 4 spaces instead of tabs
set smartindent shiftwidth=4 softtabstop=4 expandtab tabstop=4
set smarttab
set t_Co=256
set title
set visualbell
colorscheme solarized

"-- Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

"-----------------------------------------------------------

" PLUGINS
    " NERDTree
    map <C-n> :NERDTreeToggle<CR> " Mapping for opening NERDTree

    " CTRL + p
    " let g:ctrlp_max_files = 0 " Set no max file limit
    " let g:ctrlp_working_path_mode = 0 " Search from current directory instead of project root
    " map <C-B> :CtrlPBuffer<CR> " Buffer Listing

"------------------------------------------------------------

" CUSTOM MAPPINGS/REMAPPINGS AND CONFIGURATIONS

    " Remapping my <leader> to Comma
    " As this kills the opposite of ';', I'm using vim-space
    let mapleader = ","

    " Switch between split windows with ease
    map <C-J> <C-W>j<C-W>_
    map <C-k> <C-W>k<C-W>_
    map <C-h> <C-W>h<C-W>_
    map <C-l> <C-W>l<C-W>_

    " Disable Arrow Keys in Normal Mode
    noremap <Up> <Nop>
    noremap <Down> <Nop>
    noremap <Left> <Nop>
    noremap <Right> <Nop>

    " Disable Arrow Keys in Ex Mode
    cnoremap <C-p> <Up>
    cnoremap <C-n> <Down>

    " Save a file as root (\W)
    noremap <leader>W :w !sudo tee % > /dev/null<CR>

    " Disable :hlsearch highlighting with CTRL+L
    nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

    " Airline
    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
          let g:airline_symbols = {}
    endif
    let g:airline_symbols.space = "\ua0"

    " PHP QA Tools
    let g:phpqa_messdetector_ruleset = '~/.vim/misc/phpmd-ruleset.xml' " Ruleset file for PHPMD
    let g:phpqa_codesniffer_args     = '--standard=PSR2'             " Set the sniffer for PHPCS
    let g:phpqa_messdetector_autorun = 0                             " Don't run PHPMD on save
    let g:phpqa_codesniffer_autorun  = 0                             " Don't run PHPCS on save

" ------------------------------------------------------------
