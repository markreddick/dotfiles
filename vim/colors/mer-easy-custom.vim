" Vim color file
"
" Note: cterm can be 'bold', 'underline', 'reverse', 'italic' or 'none'

"set background=dark

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
  let gfg = a:0 >= 5 ? a:5 : ''
  let gbg = a:0 >= 6 ? a:6 : ''
  let gattr = a:0 >= 7 ? a:7 :attr

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
  if (gfg != '')
    let cmd .= ' guifg=' . gfg
  endif
  if (gbg != '')
    let cmd .= ' guibg=' . gbg
  endif
"  if (gattr != '')
"    let cmd = ' gui=' . gattr
"  endif

  exec cmd

 " exec "hi ".group.
 "   \ " ctermfg=".fg.
 "   \ " ctermbg=".bg.
 "	\ " cterm=".attr
endfun

fun! s:SetVar(varName, varValue)
  if !exists("{a:varName}")
    let {a:varName} = a:varValue
  endif
endfunc

call s:SetVar('g:merBackgroundColor', 16)
call s:SetVar('g:merNormalColor', 47)
call s:SetVar('g:merCommentColor', 28)
call s:SetVar('g:merKeywordColor', 40)
call s:SetVar('g:merInvisiblesColor', 235)
call s:SetVar('g:merHighlightColor1', 82)
call s:SetVar('g:merHighlightColor2', 42)
call s:SetVar('g:merRulerColor', 233)
call s:SetVar('g:merErrorColor', 118)
call s:SetVar('g:merErrorBackgroundColor', 16)

" Matrix - Green
"let s:bg_color = 16
call s:X('Normal', g:merNormalColor, g:merBackgroundColor, '', g:merGUINormalColor, g:merGUIBackgroundColor)
call s:X('merBaseColor', g:merNormalColor, g:merBackgroundColor, '', g:merGUINormalColor, g:merGUIBackgroundColor)
call s:X('merCommentColor', g:merCommentColor, '', '', g:merGUICommentColor)
call s:X('merKeywordColor', g:merKeywordColor, '', '', g:merGUIKeywordColor)
call s:X('merInvisiblesColor', g:merInvisiblesColor, '', '', g:merGUIInvisiblesColor)
call s:X('merHighlightColor1', g:merHighlightColor1, '', '', g:merGUIHighlightColor1)
call s:X('merHighlightColor2', g:merHighlightColor2, '', '', g:merGUIHighlightColor2)
call s:X('merMatchColor', '', '', 'reverse')
call s:X('merRulerColor', '', g:merRulerColor, '', '', g:merGUIRulerColor)
call s:X('merErrorColor', g:merErrorColor, g:merErrorBackgroundColor, '', g:merGUIErrorColor, g:merGUIErrorBackgroundColor)

"call s:X('Normal', 40, s:bg_color)
"call s:X('SpecialKey', 22) "spaces/tabs

hi! link Normal merBaseColor
hi! link SpecialKey merInvisiblesColor
hi! link NONE Normal

hi! link Directory Normal
hi! link LineNr merCommentColor 
hi! link CursorLineNr Normal
hi! link MoreMsg Normal
hi! link Question Normal
hi! link Search merMatchColor

hi! link Title Normal
hi! link WarningMsg Normal

call s:X('Visual', '', '', 'reverse')

" Spelling
hi! link SpellBad merErrorColor
hi! link SpellCap merErrorColor
hi! link SpellRare merErrorColor
hi! link SpellLocal merErrorColor

" Popup menu 
hi! link PmenuThumb merErrorColor
hi! link Pmenu Normal
hi! link PmenuSel merHighlightColor1

" wild menu
call s:X('WildMenu', '', '', 'standout')

" folding
call s:X('Folded', '', '', 'standout')
call s:X('FoldColumn', '', '', 'standout')

" signs
hi! link SignColumn Normal

" diff
hi! link diffRemoved merHighlightColor1
hi! link diffAdded merKeywordColor

" VimDiff
hi! link DiffAdd merKeywordColor
hi! link DiffDelete merHighlightColor1
hi! link DiffChange merHighlightColor2

" GitGutter
hi! link GitGutterAdd merKeywordColor
hi! link GitGutterChange merHighlightColor2
hi! link GitGutterDelete merHighlightColor1
hi! link GitGutterChagneDelete merKeywordColor

" tabline
call s:X('TabLine', 255, 242, 'underline')
call s:X('TabLineFill', 255, 242, 'underline')
call s:X('TabLineSel', 255, 242, 'underline')

" status line
call s:X('StatusLine', 250, 19)
call s:X('StatusLineNC', 247, 232)
call s:X('VertSplit', 244)
hi! link VertSplit merInvisiblesColor

" cursor 
call s:X('Cursor', g:merBackgroundColor, g:merNormalColor, '', g:merGUINormalColor, g:merGUIBackgroundColor)
call s:X('CursorLine', g:merBackgroundColor, g:merNormalColor, 'reverse', g:merGUINormalColor, g:merGUIBackgroundColor)
hi! link CursorColumn merRulerColor

" color column
"call s:X('ColorColumn', '', 16)
hi! link ColorColumn merRulerColor

" parens
call s:X('MatchParen', g:merKeywordColor, g:merBackgroundColor, 'bold', g:merGUIKeywordColor, g:merGUIBackgroundColor)

" conceal
call s:X('Conceal', 251, 240)

" terminal
call s:X('StatusLineTerm', 16, 46, 'bold')
call s:X('StatusLineTermNC', 16, 46, 'reverse')


" special
hi! link NonText merInvisiblesColor
hi! link SpecialChar merKeywordColor
hi! link Special merKeywordColor
hi! link Delimiter Normal
hi! link ErrorMsg merErrorColor
hi! link Todo merHighlightColor2

" SQL
hi! link sqlKeyword String
hi! link sqlStatement String
hi! link sqlType String

" netrwtreelisting
hi! link netrwDir merHighlightColor1
hi! link netrwClassify merBaseColor
hi! link netrwPlain merBaseColor
hi! link netrwTreeBar merHighlightColor1

" HTML

hi! link htmlTag Statement
hi! link htmlEndTag htmlTag
hi! link htmlTagName htmlTag
hi! link htmlLink merHighlightColor2

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
hi! link Constant merKeywordColor 
hi! link Comment merCommentColor
hi! link Exception Noraml
hi! link Boolean merKeywordColor 
hi! link StorageClass merKeywordColor
hi! link Error ErrorMsg
hi! link Identifier Normal
hi! link PreProc Normal
hi! link Operator merKeywordColor
hi! link Keyword merKeywordColor
hi! link Define merkeywordColor 
hi! link Structure Normal
hi! link String merHighlightColor1
hi! link StringDelimiter Normal
hi! link Number merKeywordColor
hi! link Float merKeywordColor
hi! link Function merKeywordColor
hi! link Repeat Normal
hi! link Conditional merKeywordColor 
hi! link Label Normal
hi! link Statement merKeywordColor 
hi! link Type merKeywordColor 
hi! link Include merKeywordColor

" PHP
hi! link phpRegion Normal
hi! link phpKeyword Statement
hi! link phpStringSingle merHighlightColor1
hi! link phpStringDouble merHighlightColor2
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
hi! link phpVarSelector merKeywordColor 
hi! link phpMethodsVar Normal
hi! link phpSpecialFunction  Function
hi! link phpRepeat Operator

" delete functions
delf s:X
