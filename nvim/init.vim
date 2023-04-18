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

" Godot
Plug 'habamax/vim-godot'

" latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" COC completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Typewriter
Plug 'logico/typewriter-vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~# '\s'
endfunction

let g:godot_executable='godot3'
set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=8
set softtabstop=8
set shiftwidth=8
set expandtab
set autoindent
set smarttab
set wildmode=longest,list
syntax on
set ttyfast
set history=1000
set nowrap

set cino+=(0


autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'mupdf'

nmap <F12> :Goyo <bar> Limelight!!<CR>"

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
augroup myCmds
        au!
        autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup end
