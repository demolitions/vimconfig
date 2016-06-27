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
setlocal indentexpr=NagiosIndentRow(v:lnum,1)
setlocal indentkeys=o,O,*<Return>,<>>,<<>,/,{,}

set cpo-=C

" [-- finish, if the function already exists --]
if exists('*NagiosIndentRow')
		finish
endif

fun! NagiosIndentRow(lnum, use_syntax_check)
		" Find a non-empty line above the current line.
		let lnum = prevnonblank(a:lnum - 1)

		" Hit the start of the file, use zero indent.
		if lnum == 0
				return 0
		endif

		let prevline=getline(lnum)
		let line=getline(a:lnum)
		let ind=indent(lnum)
		let inddelta=0
		if match(line, '^\s*}') == 0
				"if this is a closing tag line, reduce its indentation
				let inddelta = 0 - &sw
		elseif match(prevline,'.*{\s*$') == 0
				"if previous line is a opening tag line, increase its indentation
				let inddelta = &sw
		endif

		let ind = ind + inddelta

		return ind
endfun

" vim:ts=8
