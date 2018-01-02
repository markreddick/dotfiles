
function MERCustomOverride(overrideName)

  if a:overrideName == 'hacker'

    let g:merBackgroundColor = 16
    let g:merNormalColor = 47
    let g:merCommentColor = 28
    let g:merKeywordColor = 40
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 82
    let g:merHighlightColor2 = 42
    let g:merRulerColor = 233
    let g:merErrorColor = 118
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#222222'
    let g:merGUINormalColor = '#25d70f'
    let g:merGUICommentColor = '#0f9e08'
    let g:merGUIKeywordColor = '#41f68b'
    let g:merGUIInvisiblesColor = '#0c480a'
    let g:merGUIHighlightColor1 = '#9dfb00'
    let g:merGUIHighlightColor2 = '#94fb8b'
    let g:merGUIRulerColor = '#003600'
    let g:merGUIErrorColor = '#000000'
    let g:merGUIErrorBackgroundColor = '#11a50a'

  elseif a:overrideName == 'borland'

    let g:merBackgroundColor = 16
    let g:merNormalColor = 47
    let g:merCommentColor = 28
    let g:merKeywordColor = 40
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 82
    let g:merHighlightColor2 = 42
    let g:merRulerColor = 233
    let g:merErrorColor = 118
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#000066'
    let g:merGUINormalColor = '#d8d8d8'
    let g:merGUICommentColor = '#c7dd0c'
    let g:merGUIKeywordColor = '#ffffff'
    let g:merGUIInvisiblesColor = '#000000'
    let g:merGUIHighlightColor1 = '#ffc600'
    let g:merGUIHighlightColor2 = '#bed6ff'
    let g:merGUIRulerColor = '#2f297a'
    let g:merGUIErrorColor = '#d25252'
    let g:merGUIErrorBackgroundColor = '#000066'

  elseif a:overrideName == 'cyan'

    let g:merBackgroundColor = 16
    let g:merNormalColor = 208 
    let g:merCommentColor = 202
    let g:merKeywordColor = 214
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 226
    let g:merHighlightColor2 = 184
    let g:merRulerColor = 233
    let g:merErrorColor = 196
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#282828'
    let g:merGUINormalColor = '#a6f8ff'
    let g:merGUICommentColor = '#008e9a'
    let g:merGUIKeywordColor = '#77f3fe'
    let g:merGUIInvisiblesColor = '#006a73'
    let g:merGUIHighlightColor1 = '#00d4ff'
    let g:merGUIHighlightColor2 = '#00fff1'
    let g:merGUIRulerColor = '#1a353a'
    let g:merGUIErrorColor = '#000000'
    let g:merGUIErrorBackgroundColor = '#a6f8ff'

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
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#202020'
    let g:merGUINormalColor = '#ffb000'
    let g:merGUICommentColor = '#815900'
    let g:merGUIKeywordColor = '#ffcc00'
    let g:merGUIInvisiblesColor = '#5a3e00'
    let g:merGUIHighlightColor1 = '#e49300'
    let g:merGUIHighlightColor2 = '#e0a000'
    let g:merGUIRulerColor = '#352400'
    let g:merGUIErrorColor = '#000000'
    let g:merGUIErrorBackgroundColor = '#ffb000'

  elseif a:overrideName == 'vader'

    let g:merBackgroundColor = 16
    let g:merNormalColor = 208 
    let g:merCommentColor = 202
    let g:merKeywordColor = 214
    let g:merInvisiblesColor = 235
    let g:merHighlightColor1 = 226
    let g:merHighlightColor2 = 184
    let g:merRulerColor = 233
    let g:merErrorColor = 196
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#000000'
    let g:merGUINormalColor = '#bb0000'
    let g:merGUICommentColor = '#5f0000'
    let g:merGUIKeywordColor = '#bb3c3c'
    let g:merGUIInvisiblesColor = '#531a1a'
    let g:merGUIHighlightColor1 = '#ff0000'
    let g:merGUIHighlightColor2 = '#d15400'
    let g:merGUIRulerColor = '#4b2004'
    let g:merGUIErrorColor = '#000000'
    let g:merGUIErrorBackgroundColor = '#ff0000'

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
    let g:merErrorBackgroundColor = 16

    let g:merGUIBackgroundColor = '#000000'
    let g:merGUINormalColor = '#ff9966'
    let g:merGUICommentColor = '#666699'
    let g:merGUIKeywordColor = '#ffcc99'
    let g:merGUIInvisiblesColor = '#666699'
    let g:merGUIHighlightColor1 = '#99ccff'
    let g:merGUIHighlightColor2 = '#9966ff'
    let g:merGUIRulerColor = '#ff9900'
    let g:merGUIErrorColor = '#ff3300'
    let g:merGUIErrorBackgroundColor = '#000000'

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
    let g:merErrorBackgroundColor = 6

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
    let g:merErrorBackgroundColor = 233
  
  endif

endfunction
