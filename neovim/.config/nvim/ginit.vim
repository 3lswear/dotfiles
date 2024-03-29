GuiRenderLigatures 1

" GuiFont! Jetbrains Mono:h11
GuiFont! Fira Code:h12
" Set Editor Font
" if exists(':GuiFont')
"     " Use GuiFont! to ignore font errors
"     GuiFont! {Jetbrains Mono}:h{11}
" endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
