execute pathogen#infect()
execute pathogen#helptags()

let mapleader=" "

colorscheme twilight256
set relativenumber
set visualbell

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

set shiftwidth=2
set tabstop=2
set softtabstop=2

map <C-n> :NERDTreeToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

:hi LineNr ctermfg=darkcyan ctermbg=black

