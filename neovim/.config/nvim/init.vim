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

	" Linter and norminette checker
	" Plug 'vim-syntastic/syntastic'
	Plug 'alexandregv/norminette-vim'

	" ALE
	" Plug 'dense-analysis/ale'
	Plug 'folke/which-key.nvim'

	
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

set number
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
" set autochdir

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

autocmd FileType c compiler norminette

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
  set undodir=$HOME/.local/share/nvim/undo/     "directory where the undo files will be stored
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

" Backspace to previous buffer
nnoremap <Backspace> <C-^>

" Set system clipboard
" set clipboard+=unnamedplus

" Open help in vsplit
"autocmd FileType help wincmd H

" Neovide Stuff
" set guifont=Fira\ Code:h11
" set guifont=Jetbrains\ Mono\ Medium:h11
" source ~/.config/nvim/ginit.vim
"
augroup vimStartup
	au!

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
				\ if line("'\"") >= 1 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif

augroup END

set title


if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


if exists('g:neoray')
    " set guifont=Fira_Code_Medium:h11
	set guifont=:h12
	NeoraySet BoxDrawingOn false
endif

" Lua colorizer setup
lua require'colorizer'.setup()

" my stuff
" do not consider '-' as a word separator in c files
autocmd BufWritePre,BufRead *.c set iskeyword-=-
autocmd BufWritePre,BufRead *.rt setf conf

" close all buffers but current
command! BufOnly silent! call Preserve("exec '%bd|e#|bd#'")
hi DiffAdd guifg=NONE guibg=#4b5632
" set up gitgutter
lua << EOF
require('gitsigns').setup()
EOF
" set up telescope

source ~/.config/nvim/telescope.vim

" TreeShitter config
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"go", "php", "c", "cpp", "vim"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
	enable = true,              -- false will disable the whole extension
	disable = {},  -- list of language that will be disabled
  },
}
EOF

" which-key.nvim
"

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
let g:termdebug_wide=1
packadd termdebug
let g:termdebug_popup=0

map <leader>k :pyf /usr/share/clang/clang-format.py<cr>


if $USER == 'root'
	" colorscheme gruvbox
	set background=light
	set wrap
endif
" endif
