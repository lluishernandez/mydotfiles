" Install Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Install all the plugins(execute inside vim): VundleInstall
" Enjoy

" General
set number
set t_Co=256
syntax enable
set background=dark

"" Python specific
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

" FZF
set rtp+=~/.fzf
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'Shougo/neocomplete.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'hdima/python-syntax'
Plugin 'sickill/vim-monokai'

call vundle#end()
filetype plugin indent on

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Python-syntax
let python_highlight_all = 1

colorscheme monokai
