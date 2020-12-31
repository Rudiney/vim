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
set nowrap

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
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
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'svermeulen/vim-easyclip'
  Plug 'junegunn/vim-peekaboo'

  Plug 'vitalk/vim-simple-todo'

call plug#end()

" color agila
" color dracula
color monokai

" NERDTree handy configs
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1

let g:clap_theme = 'material_design_dark'

map <Leader>n  :NERDTreeFind<CR> 
map <Leader>y :Clap files<CR> 
nmap <Leader>p <Plug>(Prettier)
map <Leader>s :w<CR>
map <Leader>' :q<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <Leader>t :vsp<CR>

" Override simple todo default keys
let g:simple_todo_map_keys = 0
nmap <Leader>o <Plug>(simple-todo-below)
nmap <Leader>O <Plug>(simple-todo-above)
nmap <Leader>x <Plug>(simple-todo-mark-switch)


" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
