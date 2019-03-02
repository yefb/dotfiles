" source ~/.vim/bundles.vim

" Personal Settings {{{1
set background=dark
set confirm
" Highlight current line
set cursorline
set encoding=utf-8
" Allow cursor keys in insert mode
set esckeys
set hidden
set hlsearch
set ignorecase
" Ignore case in autocompletion
set infercase
set list
set mouse=a
set nocompatible
set noeol
set nostartofline
set number
" Jump to the matching bracket
set showmatch
set showmode
set smartcase
set smarttab
set t_Co=256
set title
set visualbell
" Using 4 spaces instead of tabs {{{2
set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

colorscheme solarized

" Centralize backups, swapfiles and undo history {{{2
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

if (v:version > 702)
    set cc=80,120
endif

" Custom mappings/remappings and configurations {{{1

    " Remapping my <leader> to Comma
    " As this kills the opposite of ';', I'm using vim-space
    let mapleader = ","

    " Disable Arrow Keys in Normal Mode
    " noremap <Up> <Nop>
    " noremap <Down> <Nop>
    " noremap <Left> <Nop>
    " noremap <Right> <Nop>

    " Disable Arrow Keys in Ex Mode
    " cnoremap <C-p> <Up>
    " cnoremap <C-n> <Down>

    " Save a file as root (,W)
    noremap <leader>W :w !sudo tee % > /dev/null<CR>

    " Disable :hlsearch highlighting with CTRL+L
    " and then refresh the screen
    nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

    " PHP QA Tools
    let g:phpqa_messdetector_ruleset = '~/.vim/misc/phpmd-ruleset.xml' " Ruleset file for PHPMD
    let g:phpqa_codesniffer_args     = '--standard=PSR2'             " Set the sniffer for PHPCS
    let g:phpqa_messdetector_autorun = 0                             " Don't run PHPMD on save
    let g:phpqa_codesniffer_autorun  = 0                             " Don't run PHPCS on save

    " Mappings for easy Tab Alignment
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>

    let g:ctrlp_max_files = 0 " Set no max file limit
    let g:ctrlp_working_path_mode = 0 " Search from current directory instead of project root
    map <leader>t :CtrlP<CR>
    " Buffer Listing
    map <leader>b :CtrlPBuffer<CR>

    " NERDTree
    map <leader>n :NERDTreeToggle<CR> " Mapping for opening NERDTree

    " Toggle between Vim Airline and the normal Status Line
    map <leader>s :AirlineToggle<CR>

    " Vim Airline - Status Line
        set statusline=
        set statusline+=%<\                       " cut at start
        set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
        set statusline+=%-40f\                    " path
        set statusline+=%=%1*%y%*%*\              " file type
        set statusline+=%10((%l,%c)%)\            " line and column
        set statusline+=%P                        " percentage of file
        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif

        " Unicode Symbols
        let g:airline_left_sep = '»'
        let g:airline_left_sep = '▶'
        let g:airline_right_sep = '«'
        let g:airline_right_sep = '◀'
        let g:airline_symbols.linenr = '␊'
        let g:airline_symbols.linenr = '␤'
        let g:airline_symbols.linenr = '¶'
        let g:airline_symbols.branch = '⎇'
        let g:airline_symbols.paste = 'ρ'
        let g:airline_symbols.paste = 'Þ'
        let g:airline_symbols.paste = '∥'
        let g:airline_symbols.whitespace = 'Ξ'
        let g:airline_symbols.space = "\ua0"

        " powerline symbols
        let g:airline_left_sep = ''
        let g:airline_left_alt_sep = ''
        let g:airline_right_sep = ''
        let g:airline_right_alt_sep = ''
        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = ''
        let g:airline_symbols.linenr = ''
