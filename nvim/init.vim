setglobal nocompatible
let mapleader="\<Space>"

call plug#begin('~/local/share/nvim/plugged')
Plug 'tmhedberg/SimpylFold'
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/indentpython.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-syntastic/syntastic'
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'iCyMind/NeoSolarized'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
      \ 'coc-tabnine',
      "\ 'coc-cspell-dicts',
      "\ 'coc-spell-checker',
      \ 'coc-tsserver',
      \ 'coc-html',
      \ 'coc-lists',
      \ 'coc-phpls',
      \ 'coc-sh',
      \ 'coc-css',
      \ 'coc-stylelint',
      \ 'coc-vimlsp',
      \ 'coc-go',
      \ 'coc-elixir',
      \ 'coc-json',
      \ 'coc-eslint',
      \ 'coc-python',
      \ 'coc-java',
      \ 'coc-jest',
      \ 'coc-solargraph',
      \ 'coc-yaml',
      \ 'coc-highlight',
      \ 'coc-snippets',
      \ 'coc-docker',
      \ 'coc-diagnostic',
      \]

call plug#end()

"FROM MR BARUTKIN

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>

nnoremap <Leader>w :wa<CR>
nnoremap <Leader>q :q<CR>

nmap <silent> // :nohlsearch<CR>
noremap <leader>hl :set hlsearch! hlsearch?<CR>
set lazyredraw
set ttyfast

nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz



set number
set relativenumber
set cursorline
set cursorcolumn
set nofoldenable
set wrap
set linebreak
set hlsearch
set ignorecase
set smartcase

set encoding=utf-8

set termguicolors

" Shortcutting split navigation
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
" NerdTree Stuff
nmap <C-m> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
"colorscheme codedark
"colorscheme solarized
colorscheme NeoSolarized
syntax enable
set background=dark

if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif

" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let g:powerline_pycmd="py3"
set clipboard+=unnamedplus

source ~/.config/nvim/coc.vim
