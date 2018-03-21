" ====================================================================
"  Functions definitions 
" ====================================================================

" ====================================================================
"  Function to switch relative numbering
" ====================================================================
function! NumberToggle()
  if (&relativenumber == 1)
    set number 
    set norelativenumber 
  else 
    set relativenumber 
  endif 
endfunc

" ====================================================================
" Function to switch cursor lines
" ====================================================================
function! CursorLineToggle()
	if (&cursorline == 1 || &cursorcolumn == 1)
		set nocursorline 
		set nocursorcolumn
	else 
		set cursorline 
		set cursorcolumn 
	endif 
endfunc 

" ====================================================================
" Open anything and Startify at the same time
" ====================================================================
autocmd VimEnter *
		\   if !argc()
		\ |   Startify
    \ |   NERDTree
		\ |   wincmd w
    \ |   set cursorline
		\ | endif
