setglobal nocompatible
let mapleader="\<Space>"

call plug#begin('~/local/share/nvim/plugged')

"Plug 'tmhedberg/SimpylFold'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'jnurmine/Zenburn'

"COLOR SCHEMES
Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'

"STATUS BAR 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'

"FILE TREE
Plug 'scrooloose/nerdtree'

"SYNTAX HIGLIGHT
Plug 'vim-syntastic/syntastic'

"CODE COMPLETION
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.config/nvim/coc.vim

"let g:coc_global_extensions = [
"      \ 'coc-tabnine',
"      \ 'coc-tsserver',
"      \ 'coc-html',
"      \ 'coc-lists',
"      \ 'coc-phpls',
"      \ 'coc-sh',
"      \ 'coc-css',
"      \ 'coc-stylelint',
"      \ 'coc-vimlsp',
"      \ 'coc-go',
"      \ 'coc-elixir',
"      \ 'coc-json',
"      \ 'coc-eslint',
"      \ 'coc-python',
"      \ 'coc-java',
"      \ 'coc-jest',
"      \ 'coc-solargraph',
"      \ 'coc-yaml',
"      \ 'coc-highlight',
"      \ 'coc-snippets',
"      \ 'coc-docker',
"      \ 'coc-diagnostic',
"      \]

call plug#end()

"FROM MR BARUTKIN

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :wa<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>


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
set splitbelow
set splitright

set encoding=utf-8

set termguicolors

"Tmux hack
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

"Fix tmux and stuff
" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    "set term=screen-256color
endif

" fix cursor display in cygwin
if has("win32unix")
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

" Shortcutting split navigation
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
" NerdTree Stuff
"nmap <C-m> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
"colorscheme codedark
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"
syntax enable
set background=dark

if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif

" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"let g:powerline_pycmd="py3"
set clipboard+=unnamedplus

