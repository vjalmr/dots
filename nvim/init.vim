call plug#begin()

" airline
Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" vim-css-color
Plug 'ap/vim-css-color'

" haxe plugin
Plug 'jdonaldson/vaxe'

call plug#end()

set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=8
set softtabstop=8
set shiftwidth=8
set wildmode=longest,list
syntax on
set ttyfast
set history=1000
