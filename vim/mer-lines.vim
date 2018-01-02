
function! GitBranchWithSymbol()
  if exists('*gitbranch#name')
    let branch_name = gitbranch#name()
	return strlen(branch_name) > 0 ? '  ' . branch_name . ' ' : ''
  else
    return ''
  endif
endfunction

"allow overriding colors - if not set, we will set to defaults
if !exists("g:merSection1FG")
  let g:merSection1FG=253
  let g:merSection1BG=21
  let g:merSection2FG=255
  let g:merSection2BG=33
  let g:merMainFG=253
  let g:merMainBG=27
  let g:merInactiveFG=253
  let g:merInactiveBG=21

  let g:merGUISection1FG='#000000'
  let g:merGUISection1BG='#0f9e08'
  let g:merGUISection2FG='#000000'
  let g:merGUISection2BG='#25d70f'
  let g:merGUIMainFG='#000000'
  let g:merGUIMainBG='#94fb8b'
  let g:merGUIInactiveFG='#000000'
  let g:merGUIInactiveBG='#0f9e08'

endif

exec 'hi MERMain              guifg=' . g:merGUIMainFG     . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merMainFG     . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'
exec 'hi MERInactive          guifg=' . g:merGUIInactiveFG . ' guibg=' . g:merGUIInactiveBG . ' ctermfg=' . g:merInactiveFG . ' ctermbg=' . g:merInactiveBG . ' cterm=NONE'
exec 'hi MERSection1          guifg=' . g:merGUISection1FG . ' guibg=' . g:merGUISection1BG . ' ctermfg=' . g:merSection1FG . ' ctermbg=' . g:merSection1BG . ' cterm=NONE'
exec 'hi MERSection1Sep       guifg=' . g:merGUISection1BG . ' guibg=' . g:merGUIMainBG . ' ctermfg=' . g:merSection1BG . ' ctermbg=' . g:merMainBG . ' cterm=NONE'
exec 'hi MERSection2          guifg=' . g:merGUISection2FG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection2FG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERSection2Sep       guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUISection1BG     . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merSection1BG     . ' cterm=NONE'

exec 'hi MERTabMain           guifg=' . g:merGUISection1FG     . ' guibg=' . g:merGUISection1BG     . ' ctermfg=' . g:merSection1FG     . ' ctermbg=' . g:merSection1BG     . ' cterm=NONE'
exec 'hi MERTab               guifg=' . g:merGUISection2FG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection2FG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERTabSep            guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUIMainBG . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merMainBG . ' cterm=NONE'
exec 'hi MERLastTabSep        guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUISection1BG     . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merSection1BG     . ' cterm=NONE'
exec 'hi MERCurrentTab        guifg=' . g:merGUIMainFG . ' guibg=' . g:merGUIMainBG . ' ctermfg=' . g:merMainFG . ' ctermbg=' . g:merMainBG . ' cterm=NONE'
exec 'hi MERCurrentTabSep     guifg=' . g:merGUIMainBG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merMainBG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERCurrentLastTabSep guifg=' . g:merGUIMainBG . ' guibg=' . g:merGUISection1BG     . ' ctermfg=' . g:merMainBG . ' ctermbg=' . g:merSection1BG     . ' cterm=NONE'

function! ActiveStatus()

  let sl=""

  let sl.="%#MERMain#"
  let sl.=" %n:%f %r%m"
  let sl.="%<"
  let sl.="%="
  let sl.=" %{&fileformat}"
  let sl.=" | %{&fileencoding?&fileencoding:&encoding}"
  let sl.=" | %Y "
  let sl.="%#MERSection1Sep#\ue0b2"
  let sl.="%#MERSection1#"
  let sl.="%{GitBranchWithSymbol()}"
  let sl.="%#MERSection2Sep#\ue0b2"
  let sl.="%#MERSection2#"
  let sl.="%4p%% "
  return sl
endfunction

function! InactiveStatus()
  let sl=""
  let sl.="%#MERInactive#"
  let sl.="%<"
  let sl.=" %n:%f %r%m"
  let sl.="%="
  let sl.=""
  let sl.="%4p%% "
  return sl
endfunction

function! MyTabLine()

	let s = ''
	
	for i in range(tabpagenr('$'))
		let tabnr = i + 1 " range() starts at 0
		let winnr = tabpagewinnr(tabnr)
		let buflist = tabpagebuflist(tabnr)
		let bufnr = buflist[winnr - 1]
		let bufname = fnamemodify(bufname(bufnr), ':t')

		let s .= '%' . tabnr . 'T'
		let s .= (tabnr == tabpagenr() ? '%#MERCurrentTab#' : '%#MERTab#')
		let s .= ' ' . tabnr 

		let n = tabpagewinnr(tabnr,'$')
		if n > 1 | let s .= ':' . n | endif

		let bufmodified = getbufvar(bufnr, "&mod")
		if bufmodified | let s .= '+' | endif
	
		let s .= empty(bufname) ? ' [No Name] ' : ' ' . bufname . ' '

		let simplesep = 0
		if (tabnr < tabpagenr('$'))
			if (tabpagenr() != tabnr) && (tabpagenr() != tabnr + 1)
				let s .= ''
				let simplesep = 1
			endif
		endif

		if simplesep == 0
			if tabnr == tabpagenr('$')
				let s .= (tabnr == tabpagenr() ? "%#MERCurrentLastTabSep#\ue0b0" : "%#MERLastTabSep#\ue0b0")
			else
				let s .= (tabnr == tabpagenr() ? "%#MERCurrentTabSep#\ue0b0" : "%#MERTabSep#\ue0b0")
			endif
		endif

	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#MERTabMain#%T'

	if tabpagenr('$') > 1
		let s .= '%='
		let s .= "%#MERLastTabSep#\ue0b2"
		let s .= '%#MERTab#%999X X '
	endif
	
	return s

endfunction

set statusline=%!ActiveStatus()
set tabline=%!MyTabLine()

autocmd WinEnter * setlocal statusline=%!ActiveStatus()
autocmd WinLeave * setlocal statusline=%!InactiveStatus()

