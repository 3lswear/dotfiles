setglobal nocompatible
let mapleader="\<Space>"

call plug#begin('~/local/share/nvim/plugged')

"Plug 'tmhedberg/SimpylFold'
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'jnurmine/Zenburn'

" COMMENTS
Plug 'tpope/vim-commentary'
source ~/.config/nvim/comments.vim

" COLOR SCHEMES
Plug 'altercation/vim-colors-solarized'
Plug 'overcache/NeoSolarized'
Plug 'tomasiser/vim-code-dark'

" STATUS BAR
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" FILE TREE
Plug 'scrooloose/nerdtree'

" 42 School Header
" Plug 'pbondoer/vim-42header'

" SYNTAX HIGLIGHT
"Plug 'vim-syntastic/syntastic'

" CODE COMPLETION
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
" LangServer

call plug#end()

" From mr barutkin

nnoremap <nowait><leader>q :q<CR>
nnoremap <leader>w :wa<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" vim-fugitive shortcuts
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>


nmap <silent> // :nohlsearch<CR>
noremap <leader>hl :set hlsearch! hlsearch?<CR>

" Speed optimizations
set lazyredraw
set ttyfast

" Move word to upper- or lowercase
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set number relativenumber
set cursorline cursorcolumn
set nofoldenable
set wrap
set linebreak
set hlsearch
set ignorecase
set smartcase
set splitbelow splitright
set scrolloff=7
set mouse=a
set iskeyword+=-                      	" treat dash separated words as a word text object"
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set formatoptions-=cro                  " Stop newline continution of comments
set smartindent                         " Makes indenting smart
" Statusline always active
set laststatus=2

set encoding=utf-8

set termguicolors

" Tmux hack
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" Fix tmux and stuff
" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    "set term=screen-256color
endif

set guifont="Fira Code":11
" fix cursor display in cygwin
if has("win32unix")
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

" Shortcutting split navigation
" map <C-h> <C-w><Left>
" map <C-j> <C-w><Down>
" map <C-k> <C-w><Up>
" map <C-l> <C-w><Right>

" NerdTree Stuff
"nmap <C-m> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" Setting color and colorscheme

"colorscheme codedark
colorscheme NeoSolarized
" let g:solarized_termcolors=256
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility="normal"
let g:neosolarized_bold=1
syntax enable
set background=dark

" Enabling persistent undo
if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif

" Fuzzy finder-like behaviour
set path+=$HOME/.config/**,$HOME/*,
set path+=**
set wildmenu

" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Configure tab
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4

" Set system clipboard
set clipboard+=unnamedplus

" Open help in vsplit
"autocmd FileType help wincmd H
