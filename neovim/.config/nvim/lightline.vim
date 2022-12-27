" asdf
set hidden  " allow buffer switching without saving
set showtabline=2  " always show tabline
" remap arrow keys
" nnoremap <silent><Left> :bprev<CR>
" nnoremap <silent><Right> :bnext<CR>

let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'tabline': {
	\   'left': [ ['tabs'] ],
	\	'top': [ ['tabs'] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'gitbranch#name'
	\ }
	\ }

let g:lightline#bufferline#show_number  = 0
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#min_tab_count	= 0

let g:lightline#bufferline#clickable	= 1
let g:lightline.component_raw = {'buffers': 1}

" let g:lightline                  = {}
" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}
