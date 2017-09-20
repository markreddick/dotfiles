
function! GitBranchWithSymbol()
  if exists('*gitbranch#name')
    let branch_name = gitbranch#name()
	return strlen(branch_name) > 0 ? '  ' . branch_name . ' ' : ''
  else
    return ''
  endif
endfunction

"let g:LCARSBlack = 16
"let g:LCARSOrange = 208
"let g:LCARSMauve = 177
"let g:LCARSCrimson = 167
"let g:LCARSSky = 117
"let g:LCARSBlue = 63
"let g:LCARSAgua = 67
"let g:LCARSPurple = 99
"let g:LCARSPeach = 209
"let g:LCARSMagenta = 169
"let g:LCARSMelon = 223
"let g:LCARSSlate = 105
"let g:LCARSBurnt = 180
"let g:LCARSYellow = 222
"let g:LCARSGray = 60
"let g:LCARSRed = 196
"let g:LCARSMaroon = 160
"let g:LCARSPowder = 147


let g:LCARSBackground = 0

let g:LCARSBlack = 0
let g:LCARSBrightBlack = 8
let g:LCARSRed = 1
let g:LCARSBrightRed = 9
let g:LCARSBlue = 2
let g:LCARSBrightBlue = 10
let g:LCARSYellow = 3
let g:LCARSBrightYellow = 11
let g:LCARSViolet = 4
let g:LCARSBrightViolet = 12
let g:LCARSMauve = 5
let g:LCARSBrightMauve = 13
let g:LCARSPurple = 6
let g:LCARSBrightPurple = 14
let g:LCARSOrange = 7
let g:LCARSBrightOrange = 15

" color the split divider
"hi VertSplit ctermfg=0 ctermbg=0 cterm=NONE

" set the normal statusline colors to LCARS colors as this will be used by VIM
" when drawing the space between statusbars of adjacent splits
exec 'hi StatusLine ctermfg=' . g:LCARSBrightOrange . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi StatusLineNC ctermfg=' . g:LCARSViolet . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'

exec 'hi LCARSText ctermfg=' . g:LCARSOrange . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSOrange ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSBrightOrange . ' cterm=NONE'
exec 'hi LCARSOrangeEnd ctermfg=' . g:LCARSBrightOrange . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSViolet ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSViolet . ' cterm=NONE'
exec 'hi LCARSVioletEnd ctermfg=' . g:LCARSViolet . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSBlue ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSBlue . ' cterm=NONE'
exec 'hi LCARSBlueEnd ctermfg=' . g:LCARSBlue . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSPurple ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSPurple . ' cterm=NONE'
exec 'hi LCARSPurpleEnd ctermfg=' . g:LCARSPurple . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSYellow ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSYellow . ' cterm=NONE'
exec 'hi LCARSYellowEnd ctermfg=' . g:LCARSYellow . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSBrightBlue ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSBrightBlue . ' cterm=NONE'
exec 'hi LCARSBrightBlueEnd ctermfg=' . g:LCARSBrightBlue . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSRed ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSRed . ' cterm=NONE'
exec 'hi LCARSRedEnd ctermfg=' . g:LCARSRed . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'
exec 'hi LCARSMauve ctermfg=' . g:LCARSBlack . ' ctermbg=' . g:LCARSMauve . ' cterm=NONE'
exec 'hi LCARSMauveEnd ctermfg=' . g:LCARSMauve . ' ctermbg=' . g:LCARSBackground . ' cterm=NONE'

function! ActiveStatus()

  let showfileformat = 1
  let showfileencoding = 1
  let showfiletype = 1
  let showcursorpos = 1
  let showbranch = 1
  let showmode = 1
  let showpercentage = 1
  
  let filename = expand("%:p")
  let gitbranch = GitBranchWithSymbol()

  let staticdatalength = 61
  let datalength = staticdatalength + len(filename) + len(gitbranch)

  if datalength > winwidth(0)
    let filename = expand("%:p:t")
	let datalength = staticdatalength + len(filename) + len(gitbranch)
  endif

  if datalength > winwidth(0)
    let showfileformat = 0
	let datalength = datalength - 7
  endif

  if datalength > winwidth(0)
    let showfiletype = 0
	let datalength = datalength - 11
  endif

  if datalength > winwidth(0)
    let showfileencoding = 0
	let datalength = datalength - 10
  endif

  if datalength > winwidth(0)
    let showpercentage = 0
	let datalength = datalength - 6
  endif

  if datalength > winwidth(0)
    let showcursorpos = 0
	let datalength = datalength - 11
  endif

  if datalength > winwidth(0)
    let showbranch = 0
	let datalength = datalength - len(gitbranch)
  endif

  if datalength > winwidth(0)
    let showmode = 0
	let datalength = datalength - 9
  endif


  let sl = ""
  let sl .= "%#LCARSOrangeEnd#\ue0b6"
  let sl .= "%#LCARSOrange#"
  let sl .= " "
  let sl .= "%#LCARSText#"
  let sl .= " "
  let sl .= "%<"

  if showmode == 1

    if mode() == 'n'
      let sl .= "%#LCARSVioletEnd# NORMAL "
    elseif mode() == 'v'
      let sl .= "%#LCARSYellowEnd# VISUAL "
    elseif mode() == 'i'
      let sl .= "%#LCARSRedEnd# INSERT "
    else
      let sl .= "%#LCARSBlueEnd# " . mode() . " "
    endif

"    let sl .= "%#LCARSBlue#"
"    let sl .= " NORMAL "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  if showbranch == 1
    let sl .= "%#LCARSOrange#"
    let sl .= gitbranch
	let sl .= "%#LCARSText#"
	let sl .= " "
  endif

  let sl .= "%#LCARSYellow#"
  let sl .= " %n:" . filename . " %r%m "
  let sl .= "%#LCARSText#"
  let sl .= " "
  let sl .= "%#LCARSOrange#"
  let sl .= "%="
  let sl .= "%#LCARSText#"
  let sl .= " "

  if showfileformat == 1
    let sl .= "%#LCARSPurple#"
    let sl .= " %{&fileformat} "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  if showfileencoding == 1
    let sl .= "%#LCARSYellow#"
    let sl .= " %{&fileencoding?&fileencoding:&encoding} "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  if showfiletype == 1
    let sl .= "%#LCARSBrightBlue#"
    let sl .= " %Y "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  if showpercentage == 1
    let sl .= "%#LCARSMauve#"
    let sl.="%4p%% "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  if showcursorpos == 1
    let sl .= "%#LCARSViolet#"
    let sl .= " %4l:%-3c "
    let sl .= "%#LCARSText#"
    let sl .= " "
  endif

  let sl .= "%#LCARSOrange#"
  let sl .= " "
  let sl .= "%#LCARSOrangeEnd#\ue0b4"

  return sl

endfunction

function! InactiveStatus()
  let sl = ""
  let sl .= "%#LCARSVioletEnd#\ue0b6"
  let sl .= "%#LCARSViolet#"
  let sl .= " "
  let sl .= "%#LCARSText#"
"  let sl .= "%#LCARSViolet#"
  let sl .= " %<"
  let sl .= "%F "
  let sl .= "%#LCARSViolet#"
  let sl .= "%="
  let sl .= "%#LCARSText#"
  let sl .= " "
  let sl .= "%#LCARSViolet#""
  let sl .= " "
  let sl .= "%#LCARSVioletEnd#\ue0b4"

  return sl

endfunction


function! MyTabLine()

	let s = ''
	
"	let s .= "%#LCARSOrangeEnd#\ue0b6"
"	let s .= "%#LCARSOrange#"
"	let s .= " %#LCARSText# "
	
	for i in range(tabpagenr('$'))
		let tabnr = i + 1 " range() starts at 0
		let winnr = tabpagewinnr(tabnr)
		let buflist = tabpagebuflist(tabnr)
		let bufnr = buflist[winnr - 1]
		let bufname = fnamemodify(bufname(bufnr), ':t')

		let s .= '%' . tabnr . 'T'
		let s .= (tabnr == tabpagenr() ? "%#LCARSBlueEnd#\ue0b6%#LCARSBlue# " : "%#LCARSYellowEnd#\ue0b6%#LCARSYellow# ")
		let s .= (tabnr == tabpagenr() ? "%#LCARSBlueEnd#" : "%#LCARSYellowEnd#")
		let s .= ' ' . tabnr 
	
		let n = tabpagewinnr(tabnr,'$')
		if n > 1 | let s .= ':' . n | endif

		let s .= ' '

		let s .= (tabnr == tabpagenr() ? "%#LCARSBlue#" : "%#LCARSYellow#")
		
		let bufmodified = getbufvar(bufnr, "&mod")
		if bufmodified | let s .= '+' | endif
	
		let s .= empty(bufname) ? ' [No Name] ' : ' ' . bufname . ' '

		let s .= (tabnr == tabpagenr() ? "%#LCARSBlueEnd#\ue0b4%#LCARSBlue#" : "%#LCARSYellowEnd#\ue0b4%#LCARSYellow#")

		let s .= "%#LCARSText#"
		let s .= " "
		

	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#LCARSText#%T'
	let s .= '%='

	"let s .= "%#LCARSOrangeEnd#\ue0b6"
	"let s .= "%#LCARSOrange# "
	if tabpagenr('$') > 1
		"let s .= "%#LCARSText# "
		let s .= '%#LCARSRed#%999X CLOSE '
		let s .= "%#LCARSText# "
		let s .= "%#LCARSRed# "
		let s .= "%#LCARSRedEnd#\ue0b4"
	endif

	
	return s

endfunction

set statusline=%!ActiveStatus()
set tabline=%!MyTabLine()

autocmd WinEnter * setlocal statusline=%!ActiveStatus()
autocmd WinLeave * setlocal statusline=%!InactiveStatus()
