inoremap hh <ESC>
let mapleader = " "

set encoding=utf-8 
set clipboard=unnamedplus
set rtp+=/usr/local/opt/fzf

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'liuchengxu/vim-clap'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nerdypepper/agila.vim'
Plug 'tpope/vim-rails'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()

color agila
set termguicolors

" NERDTree handy configs
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1
" review current file with space+N
map  <Leader>n  :NERDTreeFind<CR> 

" ALE: https://github.com/dense-analysis/ale#usage
let g:ale_fixers = {'javascript': ['prettier-standard']}
let g:ale_linters = {'javascript': ['prettier-standard']}

let g:clap_theme = 'material_design_dark'
