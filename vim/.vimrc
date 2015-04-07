set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
filetype on  " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/systastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set autoindent
set autoread
set backspace=2
set clipboard=unnamed
set directory-=.                                             " don't store swapfiles in the current directory
set expandtab                                " expand tabs to spaces
set hidden
set hlsearch                                 " highlight search items
set number
set ruler
set tabstop=4                                " actual tabs are 4 chars
set shiftwidth=2                        
set smarttab
set softtabstop=2                            " insert mode tab and backspace use 2 spaces
set wildmenu                                 " show a navigable menu for tab completion
set wildmode=longest,list,full


let mapleader = ','
map <leader>l :Align
" I don't know what these do
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-l> <C-W>l
" map <C-h> <C-W>h
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>n :NERDTree<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>w <C-W><C-W>

set mouse=a
if exists('$TMUX')
  set ttymouse=xterm2
endif

set expandtab
set number

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


" RSpec.vim mappings
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

:imap ii <Esc> 

syntax enable
set background=light
colorscheme solarized
