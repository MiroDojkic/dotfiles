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
nnoremap <leader>p :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gc :GBranches track<CR>
nnoremap <leader>gp :Git -c push.default=current push<CR>
nnoremap <leader>x :silent !chmod +x %<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'junegunn/fzf', { 'do': { -> fzf.install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'stsewd/fzf-checkout.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'sheerun/vim-polyglot'
  Plug 'arcticicestudio/nord-vim'
call plug#end()

let g:nord_italic=1
colorscheme nord
hi Comment gui=italic
