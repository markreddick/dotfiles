
function MERCustomOverride(overrideName)

  if a:overrideName == 'matrix'
    
    let g:merBackgroundColor = 16
    let g:merNormalColor = 47
    let g:merCommentColor = 28
    let g:merKeywordColor = 40
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 82
    let g:merHighlightColor2 = 42
    let g:merRulerColor = 233
    let g:merErrorColor = 118
  
  elseif a:overrideName == 'amber'
    
    let g:merBackgroundColor = 16
    let g:merNormalColor = 208 
    let g:merCommentColor = 202
    let g:merKeywordColor = 214
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 226
    let g:merHighlightColor2 = 184
    let g:merRulerColor = 233
    let g:merErrorColor = 196

  elseif a:overrideName == 'lcars'

    let g:merBackgroundColor = 16
    let g:merNormalColor = 7
    let g:merCommentColor = 8
    let g:merKeywordColor = 3
    let g:merInvisiblesColor = 236
    let g:merHighlightColor1 = 2
    let g:merHighlightColor2 = 6
    let g:merRulerColor = 236
    let g:merErrorColor = 9
  
  elseif a:overrideName == 'ansi16'

    let g:merBackgroundColor = 6
    let g:merNormalColor = 7
    let g:merCommentColor = 11
    let g:merKeywordColor = 10
    let g:merInvisiblesColor = 12
    let g:merHighlightColor1 = 8
    let g:merHighlightColor2 = 9
    let g:merRulerColor = 13
    let g:merErrorColor = 14
	let g:merErrorBackgroundColor = 15

  elseif a:overrideName == 'blue'

    let g:merBackgroundColor = 233
    let g:merNormalColor = 252
    let g:merCommentColor = 243
    let g:merKeywordColor = 39
    let g:merInvisiblesColor = 236
    let g:merHighlightColor1 = 42
    let g:merHighlightColor2 = 118
    let g:merRulerColor = 16
    let g:merErrorColor = 196
  
  endif

endfunction
