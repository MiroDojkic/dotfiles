noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

syntax enable
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
set termguicolors
set background=dark

set showcmd
set autoindent
set expandtab
set ts=2
set sw=2
set textwidth=80
set undofile
set undodir=~/.vim/undodir
set nowritebackup
set nobackup
set noswapfile
set shortmess+=c
set updatetime=100

" CtrlP ignore globs
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,data

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

packadd! matchit
call plug#begin(expand('~/.vim/plugged'))
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf.install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'preservim/nerdtree'
  Plug 'mhinz/vim-signify'
  Plug 'mattn/emmet-vim'
  Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'sheerun/vim-polyglot'
  Plug 'arcticicestudio/nord-vim'
  Plug 'embark-theme/vim', { 'as': 'embark' }
call plug#end()

let g:embark_terminal_italics=1
colorscheme embark
