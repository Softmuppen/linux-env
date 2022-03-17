" Leader
let mapleader = ","

" Vim plug
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" load other plugins
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()
filetype plugin indent on

" Matching
set showmatch               " show matching
set ignorecase              " case insensitive

" Mouse
set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click

" Search
set hlsearch                " highlight search
set incsearch               " incremental search

" Navigation
nmap l <Up>
nmap j <Left>
nmap k <Down>
nmap ö <Right>

" Indentation
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

" Visual
set number                  " add line numbers
set cc=80                  " set an 80 column border for good coding style
set wildmode=longest,list   " get bash-like tab completions
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
