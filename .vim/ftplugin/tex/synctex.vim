function! Tex_GetMainFileName(...)
	if a:0 > 0
		let modifier = a:1
	else
		let modifier = ':p'
	endif

	let s:origdir = fnameescape(getcwd())

	let dirmodifier = '%:p:h'
	let dirLast = fnameescape(expand(dirmodifier))
	exe 'cd '.dirLast

	" move up the directory tree until we find a .latexmain file.
	" TODO: Should we be doing this recursion by default, or should there be a
	"       setting?
	while glob('*.latexmain') == ''
		let dirmodifier = dirmodifier.':h'
		let dirNew = fnameescape(expand(dirmodifier))
		" break from the loop if we cannot go up any further.
		if dirNew == dirLast
			break
		endif
		let dirLast = dirNew
		exe 'cd '.dirLast
	endwhile

	let lheadfile = glob('*.latexmain')
	if lheadfile != ''
		" Remove the trailing .latexmain part of the filename... We never want
		" that.
		let lheadfile = fnamemodify(substitute(lheadfile, '\.latexmain$', '', ''), modifier)
	else
		" If we cannot find any main file, just modify the filename of the
		" current buffer.
		let lheadfile = expand('%'.modifier)
	endif

    if lheadfile !~ '\.tex$'
        let lheadfile .= '.tex'
    endif
    exe 'cd '.s:origdir

	" NOTE: The caller of this function needs to escape the file name with
	"       fnameescape() . The reason its not done here is that escaping is not
	"       safe if this file is to be used as part of an external command on
	"       certain platforms.
	return lheadfile
endfunction


function! SyncTexForward()
	let s:syncfile = fnamemodify(fnameescape(Tex_GetMainFileName()), ":r").".pdf"
	let execstr = 'silent !okular --unique '.s:syncfile."\\#src:".line(".").expand("%\:p")
	let execstr=execstr.' 1>/dev/null 2>/dev/null & '
	echo execstr
	exec execstr
	exec "redraw!"
endfunction
nnoremap <Leader>f :call SyncTexForward()<CR>



