" Leader
let mapleader = ","

" Vim plug
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'airblade/vim-rooter'
call plug#end()

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

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

" Set relative line numbers
set number relativenumber
set nu rnu

" Highlight yanked text
au TextYankPost * silent! lua vim.highlight.on_yank()
au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}

" Matching
set showmatch               " show matching
set ignorecase              " case insensitive

" Mouse
set mouse=v                 " middle-click paste with
set mouse=a                 " enable mouse click

" Search
set hlsearch                " highlight search
set incsearch               " incremental search

" Navigation (normal mode)
nmap l <Up>
nmap j <Left>
nmap k <Down>
nmap ö <Right>

" Navigation (visual mode)
vmap l <Up>
vmap j <Left>
vmap k <Down>
vmap ö <Right>

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
