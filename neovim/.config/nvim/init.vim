setglobal nocompatible
let mapleader="\<Space>"

call plug#begin('~/.local/share/nvim/plugged')

	"Plug 'tmhedberg/SimpylFold'
	"Plug 'Valloric/YouCompleteMe'
	"Plug 'vim-scripts/indentpython.vim'
	"Plug 'jnurmine/Zenburn'
	" Plug 'tpope/vim-sensible'
	" Plug 'tpope/vim-repeat'

	if has('nvim-0.5.0')

	" TreeShitter (EXPERIMENTAL) (only nvim-nightly)
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Telescope.nvim
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	endif
	" COMMENTS
	Plug 'tpope/vim-commentary'
	source ~/.config/nvim/comments.vim

	" COLOR SCHEMES
	Plug 'overcache/NeoSolarized'
	" Plug 'altercation/vim-colors-solarized'
	Plug 'tomasiser/vim-code-dark'
	" Plug 'morhetz/gruvbox'

	" STATUS BAR
	" Plug 'vim-airline/vim-airline'
	" Plug 'vim-airline/vim-airline-themes'
	Plug 'itchyny/lightline.vim'
	" Plug 'taohexxx/lightline-buffer'
	Plug 'mengelbrecht/lightline-bufferline'
	Plug 'itchyny/vim-gitbranch'
	source ~/.config/nvim/lightline.vim

	" FILE TREE
	Plug 'scrooloose/nerdtree'

	" 42 School Header
	Plug 'pbondoer/vim-42header'

	" SYNTAX HIGLIGHT
	" Plug 'vim-syntastic/syntastic'
	" Plug 'sheerun/vim-polyglot'
	" Plug 'StanAngeloff/php.vim'
	" Java
	" Plug 'uiiaoo/java-syntax.vim'

	" TOML support
	" Plug 'cespare/vim-toml'

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
	" Colorizer

	Plug 'norcalli/nvim-colorizer.lua'

	"Nvim-qt gui fix
	Plug 'equalsraf/neovim-gui-shim'

	" Gitgutter in lua
	Plug 'nvim-lua/plenary.nvim'
	Plug 'lewis6991/gitsigns.nvim'

	" Telescope-project
	Plug 'nvim-telescope/telescope-project.nvim'
	
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

set wildcharm=<C-z>
" nnoremap <leader>b :buffer <C-z>

set number relativenumber
set cursorline cursorcolumn
set smartindent
set colorcolumn=80
set nofoldenable
set nowrap
set linebreak
set hlsearch
set ignorecase
set smartcase
set splitbelow splitright
set scrolloff=7 sidescrolloff=5
set mouse=a
set iskeyword+=-                      	" treat dash separated words as a word text object"
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set formatoptions-=cro                  " Stop newline continution of comments
set completeopt+=menuone
set autoread
set inccommand=nosplit
" Statusline always active
set laststatus=2

set encoding=utf-8

set termguicolors
set autochdir

" Tmux hack
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" Fix tmux and stuff
" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    "set term=screen-256color
endif

" set guifont="Fira Code":11
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
let g:NERDTreeChDirMode=2

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Avoid crashes when calling plug commands in NERDTree buffer
let g:plug_window = 'noautocmd vertical topleft new'

" Airline configuration
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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
set path+=$HOME/.config/nvim/*,$HOME/.zshrc,$HOME/.zprofile
set path+=**
set wildmenu
set wildignore=*.o

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

" Neovide Stuff
" set guifont=Fira\ Code\ Medium:h11.5
set guifont=Fira\ Code\ Medium:h11.5

if has('nvim-0.5.0-dev+927-g52e660e85')
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"go", "php", "c"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
	enable = true,              -- false will disable the whole extension
	disable = {},  -- list of language that will be disabled
  },
}
EOF

if $USER == 'root'
	" colorscheme gruvbox
	set background=light
endif
" endif
