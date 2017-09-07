" Vim color file
"
" Note: cterm can be 'bold', 'underline', 'reverse', 'italic' or 'none'

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mer-matrix"

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

let s:bg_color = 16
call s:X('BaseColor', 40, s:bg_color)
call s:X('CommentColor', 230)
call s:X('KeywordColor', 40)
call s:X('InvisiblesColor', 22)
call s:X('HighlightColor1', 42)
call s:X('HighlightColor2', 42)
call s:X('MatchColor', '', '', 'reverse')
call s:X('ErrorColor', 4)

call s:X('Normal', 40, s:bg_color)
call s:X('SpecialKey', 22) "spaces/tabs

hi! link Directory Normal
hi! link LineNr Normal
hi! link CursorLineNr Normal
hi! link MoreMsg Normal
hi! link Question Normal
hi! link Search Normal

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
call s:X('ColorColumn', '', 16)

" parens
call s:X('MatchParen', '', '', 'reverse')

" conceal
call s:X('Conceal', 251, 240)

" terminal
call s:X('StatusLineTerm', 16, 46, 'bold')
call s:X('StatusLineTermNC', 16, 46, 'reverse')


" special
call s:X('NonText', 202)
call s:X('SpecialChar', 202)
call s:X('Special', 202)
call s:X('Delimiter', 249)
call s:X('ErrorMsg', 202,1)
call s:X('Todo', 202)

" SQL
hi! link sqlKeyword String
hi! link sqlStatement String
hi! link sqlType String

" netrwtreelisting
call s:X('netrwDir', 202)
call s:X('netrwClassify', 292)
call s:X('netrwPlain', 202)
call s:X('netrwTreeBar', 202)

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
call s:X('Comment', 28)
hi! link Exception Noraml
hi! link Boolean Noraml
hi! link StorageClass Normal
hi! link Error ErrorMsg
hi! link Identifier Normal
hi! link PreProc Normal
hi! link Operator Structure
" Define == Keyword ??
hi! link Define Noraml
hi! link Structure Normal
call s:X('String', 84)
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
hi! link phpKeyword Statement
call s:X('phpStringSingle', 36)
call s:X('phpStringDouble', 84)
hi! link phpBacktick String
hi! link phpDefine Define
hi! link phpMethods Function
hi! link phpFunctions Function
hi! link phpBaselib Function
hi! link phpBackslashSequences SpecialChar
hi! link phpBackslashDoubleQuote SpecialChar
hi! link phpBackslashSingleQuote SpecialChar
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


" delete functions
delf s:X
