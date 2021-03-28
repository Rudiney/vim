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
set list listchars=tab:»·,trail:·,nbsp:␣

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where limit characters is
set textwidth=100
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

" highlight the current line
set cursorline

" ignore node_modules
set wildignore+=*/node_modules/*
set wildignore+=*/.git/*

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'liuchengxu/vim-clap'

  " Plug '/usr/local/opt/fzf'
  " Plug 'junegunn/fzf.vim'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  " Plug 'nerdypepper/agila.vim'
  Plug 'sickill/vim-monokai'
  Plug 'tpope/vim-rails'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  Plug 'aserebryakov/vim-todo-lists'
  Plug 'iberianpig/tig-explorer.vim'
  Plug 'vim-airline/vim-airline'
  " Leader+z to toggle focus a window
  Plug 'markstory/vim-zoomwin'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'svermeulen/vim-easyclip'
  Plug 'junegunn/vim-peekaboo'
  Plug 'vitalk/vim-simple-todo'
  Plug 'slim-template/vim-slim'

  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'tpope/vim-commentary'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'Yggdroot/indentLine'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'mattn/emmet-vim'
call plug#end()

" color agila
" color dracula
color monokai
" colorscheme dracula 

" NERDTree handy configs
let NERDTreeShowHidden=1  "  Always show dot files
let NERDTreeQuitOnOpen=1

let g:clap_theme = 'material_design_dark'

" Disables quick-fix to auto open when files have errors
let g:prettier#quickfix_enabled=0

" make nerdtree prettier:
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" change the emmet trigger shortcut
let g:user_emmet_leader_key='<Leader>'
" enable emmet only in normal visual mode 
let g:user_emmet_mode='nv'

map <Leader>n  :NERDTreeFind<CR>
map <Leader>y :Clap files<CR>
map <Leader>f :Clap grep2<CR>
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

" use // to search the current visual selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" hightlight searchen
set hlsearch

" :Cl command adds a console.log :D
command Cl exe "normal! a console.log('', )\<ESC>"
" :Gs go to Tig Status
command Gs exe "Tig status"
" :Lg to open LazyGit
command Lg exe ":!lazygit"

" Change the cursor style on differente modes (https://vim.fandom.com/wiki/Configuring_the_cursor)
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " insert mode = a bar
let &t_SR = "\<Esc>]50;CursorShape=2\x7" " replace mode = an underscore
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " normal mode = a block
