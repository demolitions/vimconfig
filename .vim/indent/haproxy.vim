" Vim indent file
" Language:	Nagios
" Maintainer:	Going to be Darrick Wiebe
" Last Change:	2015 Jun 09

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

" [-- local settings (must come before aborting the script) --]
setlocal indentexpr=HaProxyIndentRow(v:lnum,1)
setlocal indentkeys=o,O,*<Return>,<>>,<<>,/,{,}

set cpo-=C

" [-- finish, if the function already exists --]
if exists('*HaProxyIndentRow')
	finish
endif

fun! HaProxyIndentRow(lnum, use_syntax_check)
	" Find a non-empty line above the current line.
	let lnum = prevnonblank(a:lnum - 1)

	" Hit the start of the file, use zero indent.
	if lnum == 0
		return 0
	endif

	let prevline=getline(lnum)
	let line=getline(a:lnum)
	let ind=indent(lnum)
	if match(line, '^\s*\(global\|defaults\|frontend\|backend\|listen\)') == 0
		"if this is a keyword line, reduce its indentation
		let ind = 0 
	else
		"if previous line is a opening tag line, increase its indentation
		let ind = &sw
	endif

	return ind
endfun

" vim:ts=8
