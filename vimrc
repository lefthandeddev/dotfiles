set nocompatible


" --------------------------------
" Plugins
" --------------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'luochen1990/rainbow'
Plug 'valloric/youcompleteme'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'

call plug#end()


" --------------------------------
"  Plugin Settings
" --------------------------------

"  Airline
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1


" NERDTree
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" rainbow
let g:rainbow_active = 1

" --------------------------------
" Other
" --------------------------------

let g:mapleader = " " " Set leader to spacebar

set wrap
set number relativenumber
set nu rnu
set hlsearch

" Disable arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" Open current file in a new vertical split with '='
nnoremap = :vsplit<cr>
