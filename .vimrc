set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'roman/golden-ratio'

Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

filetype plugin indent on     " required!

let mapleader=","

" ,ev : open this file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
:map <leader>ea :e ~/dev/dotfiles/zsh/aliases<CR>
:map <leader>el :e ~/dev/dotfiles/learning.txt<CR>
:map <leader>q :q<CR>

" ,rf : "rebase fix" replace pick with fixup for all but 1st in git rebase interactive
:map <leader>rf :2,$s/^pick/fixup/<CR>
:map <leader>frf <leader>rf<CR>:wq<CR>

" ,rs : "rebase squash"
:map <leader>rs :2,$s/^pick/squash/<CR>
:map <leader>frs <leader>r1<CR>:wq<CR>



set t_Co=256
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
