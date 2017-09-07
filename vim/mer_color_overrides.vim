set t_Co=256
" turn off colors on cursor line - if we have line heighlighted in any way, it
" turns special keys (tabs mainly) the "normal" color
hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
" set color of non text chars (eol, extends and precedes)
hi NonText ctermfg=235 ctermbg=NONE cterm=NONE
" set color of special keys (nbsp, tab and trail)
hi SpecialKey ctermfg=235 ctermbg=NONE cterm=NONE
" set colored columns (to indicate desired line length) to dark gray
hi colorcolumn ctermfg=NONE ctermbg=235 cterm=NONE

"hi TabLineSel ctermfg=235 ctermbg=141 cterm=NONE
"hi TabLine ctermfg=231 ctermbg=61 cterm=NONE
"hi TabLineFill ctermfg=231 ctermbg=236 cterm=NONE

let s:merSection1FG=235
let s:merSection1BG=141
let s:merSection2FG=231
let s:merSection2BG=61
let s:merMainFG=0
let s:merMainBG=249
let s:merVisualFG=235
let s:merVisualBG=215
let s:merInsertFG=235
let s:merInsertBG=84
let s:merInactiveFG=249
let s:merInactiveBG=237
"hello
exec 'hi MERMain ctermfg=' . s:merMainFG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
exec 'hi MERInactive ctermfg=' . s:merInactiveFG . ' ctermbg=' . s:merInactiveBG . ' cterm=NONE'
exec 'hi MERSection1 ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
exec 'hi MERSection1Sep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
exec 'hi MERSection2 ctermfg=' . s:merSection2FG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
exec 'hi MERSection2Sep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'

exec 'hi MERTabMain ctermfg=' . s:merMainFG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
exec 'hi MERTab ctermfg=' . s:merSection2FG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
exec 'hi MERTabSep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
exec 'hi MERLastTabSep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
exec 'hi MERCurrentTab ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
exec 'hi MERCurrentTabSep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
exec 'hi MERCurrentLastTabSep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'



function! ActiveStatus()
  let sl=""
  let sl.="%#MERSection1#"
  let sl.=" %{GetMode()} "
  let sl.="%#MERSection1Sep#\ue0b0"
  let sl.="%#MERSection2#"
  let sl.="%{GitBranchWithSymbol()}"
  let sl.="%#MERSection2Sep#\ue0b0"
  let sl.="%#MERMain#"
  let sl.=" %n:%t %r%m"
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
"  let sl.=" %4l:%-3c "
  let sl.=" %4l "
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


function! GetMode()
  if mode() == 'n'
    exec 'hi MERSection1 ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
    exec 'hi MERSection1Sep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
    return 'NORMAL'
  elseif mode() == 'v'
    exec 'hi MERSection1 ctermfg=' . s:merVisualFG . ' ctermbg=' . s:merVisualBG . ' cterm=NONE'
    exec 'hi MERSection1Sep ctermfg=' . s:merVisualBG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
    return 'VISUAL'
  elseif mode() == 'i'
    exec 'hi MERSection1 ctermfg=' . s:merInsertFG . ' ctermbg=' . s:merInsertBG . ' cterm=NONE'
     exec 'hi MERSection1Sep ctermfg=' . s:merInsertBG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
    return 'INSERT'
  else
    return mode()
endfunction

"set statusline=%!ActiveStatus()
