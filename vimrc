" Install Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Install all the plugins(execute inside vim): VundleInstall
" Enjoy

" General
set number
set term=screen-256color        "Fix for TMUX
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
Plugin 'nvie/vim-flake8'
Plugin 't9md/vim-quickhl'
Plugin 'klen/python-mode'
Plugin 'sickill/vim-monokai'

call vundle#end()
filetype plugin indent on

" vim-quickhl
let g:quickhl_cword_enable_at_startup = 1
let g:quickhl_cword_hl_command = 'link QuickhlCword Visual'

" FZF
set rtp+=~/.fzf
nnoremap <C-v> :FZF<CR>

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

" Python-mode
let g:pymode_folding = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Colorscheme
colorscheme monokai
