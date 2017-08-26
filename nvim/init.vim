" Neovim plugin directory
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'

" Initialize pligin system
call plug#end()

" Coloring
set termguicolors
colorscheme base16-default-dark

" Remap leader key
let mapleader=","

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" More natural pane splitting
set splitbelow
set splitright

" General Config
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" Turn on syntax highlighting
syntax on

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Indentation
set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Search
set incsearch " Find the next match as we type the search
