" Vim color file
"
" Note: cterm can be 'bold', 'underline', 'reverse', 'italic' or 'none'

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mer-color"

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

call s:X("Normal", 2, s:bg_color)

" cursor position
call s:X("CursorLine", '', 243)
call s:X("CursorColumn", '', 243)

" matching pairs (parens, bracess, etc)
call s:X("MatchParen", '', 21, 'bold')

" Tab Line
call s:X("TabLine", 244, 17)
call s:X("TabLineFill", 255, 244)
call s:X("TabLineSel", 255, 21, 'NONE')

" Auto-completion
call s:X("Pmenu", 255, 0)
call s:X("PmenuSel", 0, 255)

call s:X("Visual", '', 244)
call s:X("Cursor", s:bg_color, 21)

call s:X("LineNr", 243, s:bg_color, 'NONE')
call s:X("CursorLineNr", 255, '', 'NONE')

call s:X("Comment", 240, '')
call s:X("Todo", 193, '')

call s:X("StatusLine", 250, 19)
call s:X("StatusLineNC", 247, 234)
call s:X("VertSplit", 244)
call s:X("WildMenu", 255, 1)

call s:X("Folded", 255, 16)
call s:X("FoldColumn", 255, 16)
call s:X("SignColumn", 13, '')
call s:X("ColorColumn", '', 233)

call s:X("Title", 2, '')

call s:X("Constant", 88)
call s:X("Special", 165)
call s:X("Delimiter", 15)

call s:X("String", 33)
call s:X("StringDelimiter", 231)

call s:X("Identifier", 14)
call s:X("Structure", 14)
call s:X("Function", 57)
call s:X("Statement", 136)
call s:X("PreProc", 136)

hi! link Operator Structure
hi! link Conceal Operator

call s:X("Type", 45)
call s:X("NonText", 237)

"special keys (such as displayed spaces and tabs
call s:X("SpecialKey", 236, '')

call s:X("Search", 192, 16, 'underline')

call s:X("Directory", 11)

call s:X("ErrorMsg", 255, 1)

hi! link Error ErrorMsg
hi! link MoreMsg Special

call s:X("Question", 10)

" netrwtreelisting
call s:X('netrwDir', 46)
call s:X('netrwClassify', 244)
call s:X('netrwPlain', 255)
call s:X('netrwTreeBar', 34)

" Spell Checking

call s:X("SpellBad", '', 1)
call s:X("SpellCap", '', 4)
call s:X("SpellRare", '', 5)
call s:X("SpellLocal", '', 2)

" Diff

hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff

call s:X("DiffAdd", 0, 18)
call s:X("DiffDelete", 0, 9)
call s:X("DiffChange", 255, 12)
call s:X("DiffText", 0, 11)

" PHP

hi! link phpFunctions Function
call s:X("StorageClass", 1)
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Identifier

" Python

hi! link pythonOperator Statement

" Ruby

hi! link rubySharpBang Comment
call s:X("rubyClass", 12)
call s:X("rubyIdentifier", 6)
hi! link rubyConstant Type
hi! link rubyFunction Function

call s:X("rubyInstanceVariable", 6)
call s:X("rubySymbol", 4)
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
call s:X("rubyControl", 4)

hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier

call s:X("rubyRegexpDelimiter", 13)
call s:X("rubyRegexp", 5)
call s:X("rubyRegexpSpecial", 13)

call s:X("rubyPredefinedIdentifier", 9)

" Erlang

hi! link erlangAtom rubySymbol
hi! link erlangBIF rubyPredefinedIdentifier
hi! link erlangFunction rubyPredefinedIdentifier
hi! link erlangDirective Statement
hi! link erlangNode Identifier

" Elixir

hi! link elixirAtom rubySymbol


" JavaScript

hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp
hi! link javaScriptTemplateVar StringDelim
hi! link javaScriptTemplateDelim Identifier
hi! link javaScriptTemplateString String

" CoffeeScript

hi! link coffeeRegExp javaScriptRegexpString

" Lua

hi! link luaOperator Conditional

" C

hi! link cFormat Identifier
hi! link cOperator Constant

" Objective-C/Cocoa

hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Vimscript

hi! link vimOper Normal

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

" Debugger.vim

call s:X("DbgCurrent", 255, 4)
call s:X("DbgBreakPt", '', 5)

" vim-indent-guides

call s:X("IndentGuidesOdd", '', 255)
call s:X("IndentGuidesEven", '', 244)

" Plugins, etc.

hi! link TagListFileName Directory
call s:X("PreciseJumpTarget", 255, 10)

" delete functions
delf s:X
