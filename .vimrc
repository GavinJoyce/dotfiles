execute pathogen#infect()
execute pathogen#helptags()

let mapleader=" "

colorscheme Monokai

set relativenumber
set visualbell

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
"autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

set shiftwidth=2
set tabstop=2
set softtabstop=2

map <C-n> :NERDTreeToggle<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

":hi LineNr ctermfg=darkcyan ctermbg=black

let g:EasyMotion_leader_key = '<Leader>'
let g:EasyMotion_do_shade = 0
hi link EasyMotionTarget ErrorMsg

let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
