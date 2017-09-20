
function MERCustomOverride(overrideName)

  if a:overrideName == 'matrix'
    
	hi merBaseColor ctermfg=47 ctermbg=16
    hi merCommentColor ctermfg=28
    hi merKeywordColor ctermfg=40
    hi merInvisiblesColor ctermfg=235
    hi merHighlightColor1 ctermfg=82
    hi merHighlightColor2 ctermfg=42
    hi merMatchColor cterm=reverse
    hi merRulerColor ctermbg=233
    hi merErrorColor ctermfg=118
  
  elseif a:overrideName == 'amber'
    
	hi merBaseColor ctermfg=208 ctermbg=16
    hi merCommentColor ctermfg=202
    hi merKeywordColor ctermfg=214
    hi merInvisiblesColor ctermfg=235
    hi merHighlightColor1 ctermfg=226
    hi merHighlightColor2 ctermfg=184
    hi merMatchColor cterm=reverse
    hi merRulerColor ctermbg=233
    hi merErrorColor ctermfg=196

  elseif a:overrideName == 'lcars'

    hi merBaseColor ctermfg=7 ctermbg=16
    hi merCommentColor ctermfg=8
    hi merKeywordColor ctermfg=3
    hi merInvisiblesColor ctermfg=236
    hi merHighlightColor1 ctermfg=2
    hi merHighlightColor2 ctermfg=6
    hi merMatchColor cterm=reverse
    hi merRulerColor ctermbg=236
    hi merErrorColor ctermfg=9

  elseif a:overrideName == 'blue'

    hi merBaseColor ctermfg=252 ctermbg=16
    hi merCommentColor ctermfg=243
    hi merKeywordColor ctermfg=39
    hi merInvisiblesColor ctermfg=236
    hi merHighlightColor1 ctermfg=42
    hi merHighlightColor2 ctermfg=118
    hi merMatchColor cterm=reverse
    hi merRulerColor ctermbg=236
    hi merErrorColor ctermfg=196
  
  endif

endfunction
