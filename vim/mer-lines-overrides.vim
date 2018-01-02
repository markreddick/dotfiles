
function MERLinesOverride(overrideName)

  if a:overrideName == 'amber'

    let g:merSection1FG=16
    let g:merSection1BG=28
    let g:merSection2FG=16
    let g:merSection2BG=34
    let g:merMainFG=16
    let g:merMainBG=120
    let g:merInactiveFG=16
    let g:merInactiveBG=28

    let g:merGUISection1FG='#000000'
    let g:merGUISection1BG='#ffbb00'
    let g:merGUISection2FG='#000000'
    let g:merGUISection2BG='#e49300'
    let g:merGUIMainFG='#000000'
    let g:merGUIMainBG='#ffcc00'
    let g:merGUIInactiveFG='#000000'
    let g:merGUIInactiveBG='#815900'

  elseif a:overrideName == 'hacker'

    let g:merSection1FG=16
    let g:merSection1BG=28
    let g:merSection2FG=16
    let g:merSection2BG=34
    let g:merMainFG=16
    let g:merMainBG=120
    let g:merInactiveFG=16
    let g:merInactiveBG=28

    let g:merGUISection1FG='#000000'
    let g:merGUISection1BG='#0f9e08'
    let g:merGUISection2FG='#000000'
    let g:merGUISection2BG='#25d70f'
    let g:merGUIMainFG='#000000'
    let g:merGUIMainBG='#94fb8b'
    let g:merGUIInactiveFG='#000000'
    let g:merGUIInactiveBG='#0f9e08'

  elseif a:overrideName == 'blue'

    let g:merSection1FG=253
    let g:merSection1BG=21
    let g:merSection2FG=255
    let g:merSection2BG=33
    let g:merMainFG=253
    let g:merMainBG=27
    let g:merInactiveFG=253
    let g:merInactiveBG=21

    let g:merGUISection1FG='#000000'
    let g:merGUISection1BG='#0f9e08'
    let g:merGUISection2FG='#000000'
    let g:merGUISection2BG='#25d70f'
    let g:merGUIMainFG='#000000'
    let g:merGUIMainBG='#94fb8b'
    let g:merGUIInactiveFG='#000000'
    let g:merGUIInactiveBG='#0f9e08'
  
  elseif a:overrideName == 'vader'

    let g:merSection1FG=253
    let g:merSection1BG=21
    let g:merSection2FG=255
    let g:merSection2BG=33
    let g:merMainFG=253
    let g:merMainBG=27
    let g:merInactiveFG=253
    let g:merInactiveBG=21

    let g:merGUISection1FG='#000000'
    let g:merGUISection1BG='#bb0000'
    let g:merGUISection2FG='#000000'
    let g:merGUISection2BG='#ff0000'
    let g:merGUIMainFG='#ff0000'
    let g:merGUIMainBG='#760000'
    let g:merGUIInactiveFG='#ff0000'
    let g:merGUIInactiveBG='#4b2004'

  elseif a:overrideName == 'jellybeans'

    let g:merSection1FG=253
    let g:merSection1BG=21
    let g:merSection2FG=255
    let g:merSection2BG=33
    let g:merMainFG=253
    let g:merMainBG=27
    let g:merInactiveFG=253
    let g:merInactiveBG=21

    let g:merGUISection1FG='#282a36'
    let g:merGUISection1BG='#bd93f9'
    let g:merGUISection2FG='#282a36'
    let g:merGUISection2BG='#8197bf'
    let g:merGUIMainFG='#30302c'
    let g:merGUIMainBG='#ffb86c'
    let g:merGUIInactiveFG='#e8e8d3'
    let g:merGUIInactiveBG='#4e4e43'

  endif

endfunction
