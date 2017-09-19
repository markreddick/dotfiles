" Vim color file
"
" Note: cterm can be 'bold', 'underline', 'reverse', 'italic' or 'none'

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mer-easy-customized"

" sets the highlighting for the given group
fun! s:X(...)
  let group = a:0 >= 1 ? a:1 : 'Normal'
  let fg = a:0 >= 2 ? a:2 : ''
  let bg = a:0 >= 3 ? a:3 : ''
  let attr = a:0 >= 4 ? a:4 : 'NONE'

  let cmd = 'hi '.group
  if (fg != '')
    let cmd .= ' ctermfg='.fg
  endif
  if (bg != '')
    let cmd .= ' ctermbg='.bg
  endif
  if (attr != '')
    let cmd .= ' cterm='.attr
  endif

  exec cmd

 " exec "hi ".group.
 "   \ " ctermfg=".fg.
 "   \ " ctermbg=".bg.
 "	\ " cterm=".attr
endfun

" Matrix - Green
let s:bg_color = 16
call s:X('merBaseColor', 47, s:bg_color)
call s:X('merCommentColor', 28)
call s:X('merKeywordColor', 40)
call s:X('merInvisiblesColor', 235)
call s:X('merHighlightColor1', 82)
call s:X('merHighlightColor2', 42)
call s:X('merMatchColor', '', '', 'reverse')
call s:X('merRulerColor', '', 233)
call s:X('merErrorColor', 118)

" Amber 
let s:bg_color = 16
call s:X('merBaseColor', 208, s:bg_color)
call s:X('merCommentColor', 202)
call s:X('merKeywordColor', 214)
call s:X('merInvisiblesColor', 235)
call s:X('merHighlightColor1', 226)
call s:X('merHighlightColor2', 184)
call s:X('merMatchColor', '', '', 'reverse')
call s:X('merRulerColor', '', 233)
call s:X('merErrorColor', 196)

" LCARS  
let s:bg_color = 16
call s:X('merBaseColor', 7, s:bg_color)
call s:X('merCommentColor', 10)
call s:X('merKeywordColor', 13)
call s:X('merInvisiblesColor', 8)
call s:X('merHighlightColor1', 3)
call s:X('merHighlightColor2', 6)
call s:X('merMatchColor', '', '', 'reverse')
call s:X('merRulerColor', '', 1)
call s:X('merErrorColor', 9)

"call s:X('Normal', 40, s:bg_color)
"call s:X('SpecialKey', 22) "spaces/tabs

hi! link Normal merBaseColor
hi! link SpecialKey merInvisiblesColor
hi! link NONE Normal

hi! link Directory Normal
hi! link LineNr meInvisiblesColor 
hi! link CursorLineNr Normal
hi! link MoreMsg Normal
hi! link Question Normal
hi! link Search merMatchColor

hi! link Title Normal
hi! link WarningMsg Normal

call s:X('Visual', '', '', 'reverse')

" Spelling
call s:X('SpellBad', '', 196, 'reverse')
call s:X('SpellCap', '', 21, 'reverse')
call s:X('SpellRare', '', 201, 'reverse')
call s:X('SpellLocal', '', 33, 'underline')

" Popup menu 
call s:X('PmenuThumb', '', 255)
call s:X('Pmenu', 16, 91)
call s:X('PmenuSel', 239, 16)

" wild menu
call s:X('WildMenu', 16, 226, 'standout')

" folding
call s:X('Folded', 27, 238, 'standout')
call s:X('FoldColumn', 27, 238, 'standout')

" signs
hi! link SignColumn Normal

" diff
hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff
call s:X('DiffAdd', 0, 18)
call s:X('DiffDelete', 0, 9)
call s:X('DiffChange', 255, 12)

" tabline
call s:X('TabLine', 255, 242, 'underline')
call s:X('TabLineFill', 255, 242, 'underline')
call s:X('TabLineSel', 255, 242, 'underline')

" status line
call s:X('StatusLine', 250, 19)
call s:X('StatusLineNC', 247, 232)
call s:X('VertSplit', 244)

" cursor 
call s:X('Cursor', s:bg_color, 21)
call s:X('CursorLine', '', 243)
call s:X('CursorColumn', '', 243)

" color column
"call s:X('ColorColumn', '', 16)
hi! link ColorColumn merRulerColor

" parens
call s:X('MatchParen', '', '', 'reverse')

" conceal
call s:X('Conceal', 251, 240)

" terminal
call s:X('StatusLineTerm', 16, 46, 'bold')
call s:X('StatusLineTermNC', 16, 46, 'reverse')


" special
"call s:X('NonText', 202)
hi! link NonText merInvisiblesColor
"call s:X('SpecialChar', 202)
"call s:X('Special', 202)
"call s:X('Delimiter', 249)
hi! link Delimiter Normal
"call s:X('ErrorMsg', 202,1)
hi! link ErrorMsg merErrorColor
"call s:X('Todo', 202)

" SQL
hi! link sqlKeyword String
hi! link sqlStatement String
hi! link sqlType String

" netrwtreelisting
"call s:X('netrwDir', 202)
"call s:X('netrwClassify', 292)
"call s:X('netrwPlain', 202)
"call s:X('netrwTreeBar', 202)
hi! link netrwDir merHighlightColor1
hi! link netrwClassify merBaseColor
hi! link netrwPlain merBaseColor
hi! link netrwTreeBar merHighlightColor1

" HTML

hi! link htmlTag Statement
hi! link htmlEndTag htmlTag
hi! link htmlTagName htmlTag

" XML

hi! link xmlTag Statement
hi! link xmlEndTag xmlTag
hi! link xmlTagName xmlTag
hi! link xmlEqual xmlTag
hi! link xmlEntity Special
hi! link xmlEntityPunct xmlEntity
hi! link xmlDocTypeDecl PreProc
hi! link xmlDocTypeKeyword PreProc
hi! link xmlProcessingDelim xmlAttrib


" programming
hi! link Constant Normal
"call s:X('Comment', 28)
hi! link Comment merCommentColor
hi! link Exception Noraml
hi! link Boolean merKeywordColor 
hi! link StorageClass merKeywordColor
hi! link Error ErrorMsg
hi! link Identifier merKeywordColor
hi! link PreProc Normal
hi! link Operator merKeywordColor
" Define == Keyword ??
hi! link Keyword merKeywordColor
hi! link Define Normal
hi! link Structure Normal
"call s:X('String', 84)
hi link String merHighlightColor1
hi! link StringDelimiter Normal
hi! link Number Normal
hi! link Float Normal
hi! link Function Normal
hi! link Repeat Normal
hi! link Conditional Normal
hi! link Label Normal
hi! link Statement Normal
hi! link Type Normal
hi! link Include Normal

" PHP
hi! link phpRegion Normal
hi! link phpKeyword Statement
"call s:X('phpStringSingle', 36)
"call s:X('phpStringDouble', 84)
hi link phpStringSingle merHighlightColor1
hi link phpStringDouble merHighlightColor2
hi! link phpBacktick String
hi! link phpDefine Define
hi! link phpMethods Function
hi! link phpFunctions Function
hi! link phpBaselib Function
hi! link phpBackslashSequences Normal 
hi! link phpBackslashDoubleQuote phpStringDouble
hi! link phpBackslashSingleQuote phpStringSingle
hi! link phpParent Delimiter
hi! link phpBrackets Delimiter
hi! link phpIdentifierConst Delimiter
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Normal
hi! link phpMethodsVar Normal
hi! link phpSpecialFunction Normal







" custom status line and tab bar

" Matrix/green
"let g:merSection1FG=40
"let g:merSection1BG=16
"let g:merSection2FG=255
"let g:merSection2BG=28
"let g:merMainFG=255
"let g:merMainBG=22
"let g:merVisualFG=255
"let g:merVisualBG=202
"let g:merInsertFG=254
"let g:merInsertBG=28
"let g:merInactiveFG=249
"let g:merInactiveBG=237

" LCARS
let g:merSection1FG=16
let g:merSection1BG=63
let g:merSection2FG=16
let g:merSection2BG=99
let g:merMainFG=16
let g:merMainBG=208
let g:merVisualFG=255
let g:merVisualBG=202
let g:merInsertFG=254
let g:merInsertBG=28
let g:merInactiveFG=249
let g:merInactiveBG=237

" amber
"let g:merSection1FG=16
"let g:merSection1BG=214
"let g:merSection2FG=16
"let g:merSection2BG=208
"let g:merMainFG=16
"let g:merMainBG=202
"let g:merVisualFG=255
"let g:merVisualBG=202
"let g:merInsertFG=254
"let g:merInsertBG=28
"let g:merInactiveFG=249
"let g:merInactiveBG=237


"exec 'hi MERNormalSection ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
"exec 'hi MERNormalSectionSep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERVisualSection ctermfg=' . s:merVisualFG . ' ctermbg=' . s:merVisualBG . ' cterm=NONE'
"exec 'hi MERVisualSectionSep ctermfg=' . s:merVisualBG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERInsertSection ctermfg=' . s:merInsertFG . ' ctermbg=' . s:merInsertBG . ' cterm=NONE'
"exec 'hi MERInsertSectionSep ctermfg=' . s:merInsertBG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
 
"exec 'hi MERMain ctermfg=' . s:merMainFG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
"exec 'hi MERInactive ctermfg=' . s:merInactiveFG . ' ctermbg=' . s:merInactiveBG . ' cterm=NONE'
"exec 'hi MERSection1 ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
"exec 'hi MERSection1Sep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERSection2 ctermfg=' . s:merSection2FG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERSection2Sep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'

"exec 'hi MERTabMain ctermfg=' . s:merMainFG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
"exec 'hi MERTab ctermfg=' . s:merSection2FG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERTabSep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
"exec 'hi MERLastTabSep ctermfg=' . s:merSection2BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'
"exec 'hi MERCurrentTab ctermfg=' . s:merSection1FG . ' ctermbg=' . s:merSection1BG . ' cterm=NONE'
"exec 'hi MERCurrentTabSep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merSection2BG . ' cterm=NONE'
"exec 'hi MERCurrentLastTabSep ctermfg=' . s:merSection1BG . ' ctermbg=' . s:merMainBG . ' cterm=NONE'






" delete functions
delf s:X
