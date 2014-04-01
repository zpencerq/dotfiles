set nocompatible

" ============= GENERAL CONFIG ==============

set number                      "Line numbers
set backspace=indent,eol,start  "Allow backspace
set history=700                 "Store long history
set showcmd                     "Show incomplete cmds
set showmode                    "Show current mode
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "Disable sound
set autoread                    "Reload files changed outside vim
set encoding=utf-8
set cc=80

" More natural split opening
set splitbelow
set splitright

set hidden
syntax on
let mapleader=","

" ========== Vundle Configuration ===========
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
end

" ============= Indentation =================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tab and trailing spaces
set list listchars=tab:\ \ ,trail:·

set nowrap                      "Don't wrap lines
set linebreak                   "Wrap lines at convenient points

" ============= Turn Off Swap Files =========

set noswapfile
set nobackup
set nowb

" ============== Persistent Undo ============
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldlevel=99        "fold hard
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" =============== Completion ================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore=*.pyc,*.pyo
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================= Scrolling ================

set scrolloff=8             "Start scrolling when we're 8 lines away from edge
set sidescrolloff=15
set sidescroll=1

so ~/.vim/settings.vim
