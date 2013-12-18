" vim: nowrap fdm=marker

source ~/.vim/bundles.vim

" Personal Settings {{{1
set background=dark
set cc=80,120
set confirm
" Highlight current line
set cursorline
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

"------------------------------------------------------------

" CUSTOM MAPPINGS/REMAPPINGS AND CONFIGURATIONS

    " Remapping my <leader> to Comma
    " As this kills the opposite of ';', I'm using vim-space
    let mapleader = ","

    " Disable Arrow Keys in Normal Mode
    noremap <Up> <Nop>
    noremap <Down> <Nop>
    noremap <Left> <Nop>
    noremap <Right> <Nop>

    " Disable Arrow Keys in Ex Mode
    cnoremap <C-p> <Up>
    cnoremap <C-n> <Down>

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
    if exists(":Tabularize")
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:\zs<CR>
        vmap <Leader>a: :Tabularize /:\zs<CR>
    endif

" ------------------------------------------------------------

" Plugins Settings {{{1

    " NERDTree {{{2
    map <leader>n :NERDTreeToggle<CR> " Mapping for opening NERDTree

" STATUS LINE {{{1
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

" Optional Setups {{{1
if filereadable(expand("~/.vimrc.after"))
    source ~/.vimrc.after
endif
