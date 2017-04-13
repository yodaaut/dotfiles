syntax on
set cindent
set title

set wm=2
set tabstop=2


" Press F2 to toggle color column
nnoremap <silent><F2> :call <SID>ToggleColorColumn()<cr>

set colorcolumn=0
set textwidth=0	

let s:color_column_old = 0
let s:text_width_old = 0
function! s:ToggleColorColumn()
	if s:color_column_old == 0 || s:text_width_old == 0
		windo let &colorcolumn = 80
		windo let &textwidth = 80
		let s:color_column_old = &colorcolumn
		let s:text_width_old = &textwidth
	else
		let s:color_column_old = 0
		let s:text_width_old = 0
		windo let &colorcolumn=s:color_column_old
		windo let &textwidth=s:text_width_old
	endif
endfunction

let &titleold=getcwd()
