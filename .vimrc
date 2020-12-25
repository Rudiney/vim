inoremap hh <ESC>
let mapleader = " "

set encoding=utf-8 
set clipboard=unnamed
set rtp+=/usr/local/opt/fzf
set termguicolors
set autowrite
set ruler
set showcmd
set mouse=a

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=120
set colorcolumn=+1

" Numbers
set nu rnu
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" where to save swp files
set directory^=$HOME/vimswpfiles//

" disable line wrap
set textwidth=0 
set wrapmargin=0

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'dense-analysis/ale'
  Plug 'liuchengxu/vim-clap'

  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  " Plug 'nerdypepper/agila.vim'
  Plug 'sickill/vim-monokai'
  Plug 'tpope/vim-rails'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  Plug 'aserebryakov/vim-todo-lists'
  Plug 'iberianpig/tig-explorer.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'markstory/vim-zoomwin'

call plug#end()

" color agila
" color dracula
color monokai

" NERDTree handy configs
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1

" ALE: https://github.com/dense-analysis/ale#usage
let g:ale_fixers = {'javascript': ['prettier-standard']}
let g:ale_linters = {'javascript': ['prettier-standard']}

let g:clap_theme = 'material_design_dark'

map <Leader>n  :NERDTreeFind<CR> 
map <Leader>p :Clap files<CR> 
map <Leader>s :w<CR>
map <Leader>' :q<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <Leader>t :vsp<CR>

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
