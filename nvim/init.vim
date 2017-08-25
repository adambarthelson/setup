" Neovim plugin directory
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'

" Initialize pligin system
call plug#end()

" Remap leader key
let mapleader=","

" NERDTree
nmap <leader>n :NERDTreeToggle<cr>
