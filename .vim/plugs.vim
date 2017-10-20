" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" User bundles
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'chriskempson/base16-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'

Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'honza/vim-snippets'
Plug 'w0rp/ale'

Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'briandoll/change-inside-surroundings.vim'

Plug 'sheerun/vim-polyglot'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'Rykka/riv.vim', { 'for': 'rst' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }

Plug 'fatih/vim-go', { 'for': 'go' }

Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'dag/vim2hs', { 'for': 'haskell' }

Plug 'racer-rust/vim-racer', { 'for': 'rust' }

Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" Initialize plugin system
call plug#end()
