"
" ******************************
"      NOTE NOTE NOTE
"
" This was my original "lines" file that has the current VIM 'mode' (NORMAL,
" VISUAL or INSERT) displayed on the left section and the cursor x/y position 
" on the right - decided I didn't need the mode displayed as VIM already
" displays this for you automatically in the bottom line and the cursor
" position I never referenced since I already have line numbers showing
"
" **********************

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
  let g:merSection1FG=255
  let g:merSection1BG=33
  let g:merSection2FG=253
  let g:merSection2BG=27
  let g:merMainFG=253
  let g:merMainBG=21
  let g:merVisualFG=255
  let g:merVisualBG=202
  let g:merInsertFG=254
  let g:merInsertBG=28
  let g:merInactiveFG=249
  let g:merInactiveBG=237

  let g:merGUISection1FG='#000000'
  let g:merGUISection1BG='#25d70f'
  let g:merGUISection2FG='#000000'
  let g:merGUISection2BG='#94fb8b'
  let g:merGUIMainFG='#000000'
  let g:merGUIMainBG='#0f9e08'
  let g:merGUIVisualFG='#000000'
  let g:merGUIVisualBG='#41f68b'
  let g:merGUIInsertFG='#000000'
  let g:merGUIInsertBG='#94fb8b'
  let g:merGUIInactiveFG='#25d70f'
  let g:merGUIInactiveBG='#0f9e08'

endif

exec 'hi MERNormalSection     guifg=' . g:merGUISection1FG . ' guibg=' . g:merGUISection1BG . ' ctermfg=' . g:merSection1FG . ' ctermbg=' . g:merSection1BG . ' cterm=NONE'
exec 'hi MERNormalSectionSep  guifg=' . g:merGUISection1BG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection1BG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERVisualSection     guifg=' . g:merGUIVisualFG   . ' guibg=' . g:merGUIVisualBG   . ' ctermfg=' . g:merVisualFG   . ' ctermbg=' . g:merVisualBG   . ' cterm=NONE'
exec 'hi MERVisualSectionSep  guifg=' . g:merGUIVisualBG   . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merVisualBG   . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERInsertSection     guifg=' . g:merGUIInsertFG   . ' guibg=' . g:merGUIInsertBG   . ' ctermfg=' . g:merInsertFG   . ' ctermbg=' . g:merInsertBG   . ' cterm=NONE'
exec 'hi MERInsertSectionSep  guifg=' . g:merGUIInsertBG   . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merInsertBG   . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
 
exec 'hi MERMain              guifg=' . g:merGUIMainFG     . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merMainFG     . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'
exec 'hi MERInactive          guifg=' . g:merGUIInactiveFG . ' guibg=' . g:merGUIInactiveBG . ' ctermfg=' . g:merInactiveFG . ' ctermbg=' . g:merInactiveBG . ' cterm=NONE'
exec 'hi MERSection1          guifg=' . g:merGUISection1FG . ' guibg=' . g:merGUISection1BG . ' ctermfg=' . g:merSection1FG . ' ctermbg=' . g:merSection1BG . ' cterm=NONE'
exec 'hi MERSection1Sep       guifg=' . g:merGUISection1BG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection1BG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERSection2          guifg=' . g:merGUISection2FG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection2FG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERSection2Sep       guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'

exec 'hi MERTabMain           guifg=' . g:merGUIMainFG     . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merMainFG     . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'
exec 'hi MERTab               guifg=' . g:merGUISection2FG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection2FG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERTabSep            guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUISection1BG . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merSection1BG . ' cterm=NONE'
exec 'hi MERLastTabSep        guifg=' . g:merGUISection2BG . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merSection2BG . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'
exec 'hi MERCurrentTab        guifg=' . g:merGUISection1FG . ' guibg=' . g:merGUISection1BG . ' ctermfg=' . g:merSection1FG . ' ctermbg=' . g:merSection1BG . ' cterm=NONE'
exec 'hi MERCurrentTabSep     guifg=' . g:merGUISection1BG . ' guibg=' . g:merGUISection2BG . ' ctermfg=' . g:merSection1BG . ' ctermbg=' . g:merSection2BG . ' cterm=NONE'
exec 'hi MERCurrentLastTabSep guifg=' . g:merGUISection1BG . ' guibg=' . g:merGUIMainBG     . ' ctermfg=' . g:merSection1BG . ' ctermbg=' . g:merMainBG     . ' cterm=NONE'

function! ActiveStatus()

  let sl=""

  if mode() == 'n'
    let sl .= "%#MERNormalSection# NORMAL %#MERNormalSectionSep#\ue0b0"
  elseif mode() == 'v'
    let sl .= "%#MERVisualSection# VISUAL %#MERVisualSectionSep#\ue0b0"
  elseif mode() == 'i'
    let sl .= "%#MERInsertSection# INSERT %#MERInsertSectionSep#\ue0b0"
  else
    let sl .= "%#MERNormalSection# " . mode() . " %#MERNormalSectionSep#\ue0b0"
  endif

  let sl.="%#MERSection2#"
  let sl.="%{GitBranchWithSymbol()}"
  let sl.="%#MERSection2Sep#\ue0b0"
  let sl.="%#MERMain#"
  let sl.=" %n:%f %r%m"
  let sl.="%<"
  let sl.="%="
  let sl.="%{&fileformat}"
  let sl.=" | %{&fileencoding?&fileencoding:&encoding}"
  let sl.=" | %Y "
  let sl.="%#MERSection2Sep#\ue0b2"
  let sl.="%#MERSection2#"
  let sl.="%4p%% "
  let sl.="%#MERSection1Sep#\ue0b2"
  let sl.="%#MERSection1#"
  let sl.=" %4l:%-3c "
"  let sl.=" %4l "
  return sl
endfunction

function! InactiveStatus()
  let sl=""
  let sl.="%#MERInactive#"
  let sl.=" %n:%t %r%m"
  let sl.="%<"
  let sl.="%="
  let sl.=" %4l:%-3c "
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
	let s .= '%#MERMain#%T'

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

