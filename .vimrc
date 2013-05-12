set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

" Quickly edit/reload the vimrc file

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>

colorscheme Monokai

set relativenumber
set visualbell

syntax on
filetype on
filetype indent on
filetype plugin on

set shiftwidth=2
set tabstop=2
set softtabstop=2

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }
map <leader>x <C-w>x
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gem     " Linux/MacOSX

nnoremap <leader>s <C-w>v<C-w>l

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

set hidden
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set smarttab
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set nobackup
set noswapfile
nnoremap ; :


augroup CursorLine "highlight the cursor line in the active pane 
	au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
augroup END
