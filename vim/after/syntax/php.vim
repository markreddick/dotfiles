"if !exists("b:phpdocblock_syntax") || b:phpdocblock_syntax != 0

	syntax match mer1 "@api" containedin=phpComment 
	syntax match mer1 "@author" containedin=phpComment 
	syntax match mer1 "@category" containedin=phpComment 
	syntax match mer1 "@copyright" containedin=phpComment 
	syntax match mer1 "@deprecated" containedin=phpComment 
	syntax match mer1 "@example" containedin=phpComment 
	syntax match mer1 "@filesource" containedin=phpComment 
	syntax match mer1 "@global" containedin=phpComment 
	syntax match mer1 "@ignore" containedin=phpComment 
	syntax match mer1 "@internal" containedin=phpComment 
	syntax match mer1 "@license" containedin=phpComment 
	syntax match mer1 "@link" containedin=phpComment 
	syntax match mer1 "@method" containedin=phpComment 
	syntax match mer1 "@package" containedin=phpComment 
	syntax match mer1 "@param" containedin=phpComment 
	syntax match mer1 "@property" containedin=phpComment 
	syntax match mer1 "@property-read" containedin=phpComment 
	syntax match mer1 "@property-write" containedin=phpComment 
	syntax match mer1 "@return" containedin=phpComment 
	syntax match mer1 "@see" containedin=phpComment 
	syntax match mer1 "@since" containedin=phpComment 
	syntax match mer1 "@source" containedin=phpComment 
	syntax match mer1 "@subpackage" containedin=phpComment 
	syntax match mer1 "@throws" containedin=phpComment 
	syntax match mer1 "@todo" containedin=phpComment 
	syntax match mer1 "@uses" containedin=phpComment 
	syntax match mer1 "@used-by" containedin=phpComment
	syntax match mer1 "@var" containedin=phpComment 
	syntax match mer1 "@version" containedin=phpComment 
	highlight link mer1 Keyword 

"	let b:phpdocblock_syntax = 1

"endif
