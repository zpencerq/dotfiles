" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you"ve updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/ "Submodules
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" User bundles
Bundle "xolox/vim-misc"
Bundle "chriskempson/base16-vim"
Bundle "kien/ctrlp.vim"
Bundle "tomtom/tcomment_vim"
Bundle "tpope/vim-fugitive"
Bundle "Rykka/riv.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "majutsushi/tagbar"
Bundle "plasticboy/vim-markdown"
Bundle "Lokaltog/vim-easymotion"
Bundle "itchyny/lightline.vim"
Bundle "scrooloose/nerdtree"
Bundle "sjl/gundo.vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "edkolev/tmuxline.vim"
Bundle "vim-scripts/matchit.zip.git"
Bundle "tpope/vim-repeat.git"
Bundle "tpope/vim-surround.git"
Bundle "bogado/file-line.git"
Bundle "briandoll/change-inside-surroundings.vim"
Bundle "jnwhiteh/vim-golang"
Bundle "scrooloose/syntastic"
Bundle "kien/rainbow_parentheses.vim"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "godlygeek/tabular"
Bundle "sheerun/vim-polyglot"
Bundle "mhinz/vim-signify"
Bundle "Shougo/vimproc.vim"
Bundle "eagletmt/ghcmod-vim"
Bundle "dag/vim2hs"

"Filetype plugin indent on is required by vundle
filetype plugin indent on

