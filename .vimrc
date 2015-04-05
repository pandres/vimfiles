set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
" Plugin 'scrooloose/syntastic'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set guifont=Inconsolata\ 14
"set guifont=Inconsolata\ Bold\ 14
colorscheme desert "underwater
syntax on
"set et
set ruler
set ts=4
set sw=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
set hidden
set hlsearch
set incsearch
set wildignore=*.swp,*.bak,*.pyc
set nobackup
set undolevels=1000
set undofile
"set noswapfile
set directory=~/.vim/temporaries
"check
set showmatch
"autocomplete file behves more like bash
set wildmode=longest,list

set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]%=[%p%%\ line:\ %l\ of\ %L\ col:\ %v]
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

"
"let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"let Tlist_WinWidth = 30
"map <F4> :TlistToggle<cr>
"
"set tags+=$HOME/.vim/tags/python.ctags

ab pdb import ipdb;ipdb.set_trace()

"au BufNewFile *.py 0r ~/.vim/skel.py | let IndentStyle = "python"
" Save when losing focus "
au FocusLost * :wa

inoremap <C-space> <Esc>

"show first commit where term under cursor was added
"map <leader>1 :!git log --reverse -p -S<cword> %<cr>
let mapleader = ","

map <buffer> K :execute "!pydoc " . expand("<cword>")<CR>

