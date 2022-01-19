set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let mapleader=" "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:user_emmet_leader_key='<C-z>'

syntax enable
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
set termguicolors
set background=dark
set scrolloff=8
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set undofile
set undodir=~/.vim/undodir
set nowritebackup
set nobackup
set noswapfile
set shortmess+=c
set updatetime=100
set smartcase
set smartindent

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <silent> <space><space> :nohlsearch<Bar>:echo<CR>
nnoremap [e :<C-u>execute 'move -1-'. v:count1<CR>
nnoremap ]e :<C-u>execute 'move +'. v:count1<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>x :silent !chmod +x %<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap <C-f> :Rg<space>
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Use K to show documentation in preview window.
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-fix-current)
nmap <leader>ac  <Plug>(coc-codeaction)

packadd! matchit
call plug#begin(expand('~/.vim/plugged'))
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'junegunn/fzf', { 'do': { -> fzf.install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'sheerun/vim-polyglot'
  Plug 'embark-theme/vim', { 'as': 'embark' }
call plug#end()

let g:embark_terminal_italics=1
colorscheme embark
hi Comment gui=italic
