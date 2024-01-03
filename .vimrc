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

" set paste

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

" folding
set foldmethod=indent
set foldlevel=10

" save swap files at ~/.vim/swapfiles
set directory=$HOME/.vim/swapfiles//

" Better files find
set path+=**
set wildmenu
" set wildmode=list:longest,full

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdtree'
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

  " Plug '/usr/local/opt/fzf'
  " Plug 'junegunn/fzf.vim'
  " Plug 'dracula/vim', { 'as': 'dracula' }
  " Plug 'nerdypepper/agila.vim'
  Plug 'sickill/vim-monokai'
  " Plug '1612492/github.vim'
  Plug 'tpope/vim-rails'
  Plug 'thoughtbot/vim-rspec'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  Plug 'aserebryakov/vim-todo-lists'
  Plug 'iberianpig/tig-explorer.vim'
  Plug 'vim-airline/vim-airline'
  " Leader+z to toggle focus a window
  Plug 'markstory/vim-zoomwin'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
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
  Plug 'udalov/kotlin-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'github/copilot.vim'
call plug#end()

" color agila
" color dracula
" colorscheme dracula 
color monokai
" color github

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

" enable airline tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

map <Leader>n  :NERDTreeFind<CR>
map <Leader>y :Clap files +no-cache<CR>
map <Leader>f :Clap live_grep +no-cache<CR>
nmap <Leader>p <Plug>(Prettier)
map <Leader>s :w<CR>
map <Leader>w :w<CR>
map <Leader>' :q<CR>
map <Leader>q :q<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Moving lines: option + kjlh = ˚∆¬˙
nnoremap ∆ :m .+1<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv

nnoremap ˚ :m .-2<CR>==
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ˚ :m '<-2<CR>gv=gv

nnoremap ˙ <<
nnoremap ¬ >>

nnoremap <Leader>t :vsp<CR>

" disable Q to enter the annoying EX Mode
nnoremap Q <nop>

" Override simple todo default keys
let g:simple_todo_map_keys = 0
nmap <Leader>o <Plug>(simple-todo-below)
nmap <Leader>O <Plug>(simple-todo-above)
nmap <Leader>x <Plug>(simple-todo-mark-switch)

" Custom vim-rspec command
let g:rspec_command = "!bin/rspec {spec}"

" <F8> run the current RSpec spec
map <F8> :call RunCurrentSpecFile() <CR>
" <F7> run the current RSpec spec at the current line!
map <F7> :call RunNearestSpec() <CR>
" <F9> run the current RSpec spec
map <F9> :!bin/rails test % <CR>
" <F10> run the current RSpec spec at the current line!
map <F10> :execute '!bin/rails test %\:'.line('.') <CR>

" <F5> repeats the last command
" map <F5> :<up><CR>

"Rubocop shortcut
map <Leader>r :!rubocop %<CR>
map <Leader>R :!rubocop -A %<CR>

" use // to search the current visual selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" tab switching with Leader + 1, 2, ...
map <Leader>1 1gt<CR>
map <Leader>2 2gt<CR>
map <Leader>3 3gt<CR>
map <Leader>4 4gt<CR>
map <Leader>5 5gt<CR>

" hightlight searches
set hlsearch

" :Cl command adds a console.log :D
command Cl exe "normal! a console.log('', )\<ESC>"
command Gs exe "Tig status"
command Lg exe ":!lazygit"
command -nargs=* Rl exe ":!bin/rails <args>"

" Change the cursor style on differente modes (https://vim.fandom.com/wiki/Configuring_the_cursor)
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " insert mode = a bar
let &t_SR = "\<Esc>]50;CursorShape=2\x7" " replace mode = an underscore
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " normal mode = a block
