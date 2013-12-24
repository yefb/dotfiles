set nocompatible
filetype off

" Vundle Setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" Bundles that I use
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "tomtom/tlib_vim"
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'joonty/vim-phpqa.git'
Bundle 'markwu/vim-laravel4-snippets'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'spiiph/vim-space'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

" I'm using CommandT in a newer version
if v:version > 702
    Bundle 'git://git.wincent.com/command-t.git'
else
    Bundle 'kien/ctrlp.vim'
endif
