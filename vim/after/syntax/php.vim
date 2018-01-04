"if !exists("b:phpdocblock_syntax") || b:phpdocblock_syntax != 0

	syntax match merPHPDocTag "@api" containedin=phpDocTags 
	syntax match merPHPDocTag "@author" containedin=phpDocTags 
	syntax match merPHPDocTag "@category" containedin=phpDocTags 
	syntax match merPHPDocTag "@copyright" containedin=phpDocTags 
	syntax match merPHPDocTag "@deprecated" containedin=phpDocTags 
	syntax match merPHPDocTag "@example" containedin=phpDocTags 
	syntax match merPHPDocTag "@filesource" containedin=phpDocTags 
	syntax match merPHPDocTag "@global" containedin=phpDocTags 
	syntax match merPHPDocTag "@ignore" containedin=phpDocTags 
	syntax match merPHPDocTag "@internal" containedin=phpDocTags 
	syntax match merPHPDocTag "@license" containedin=phpDocTags 
	syntax match merPHPDocTag "@link" containedin=phpDocTags 
	syntax match merPHPDocTag "@method" containedin=phpDocTags 
	syntax match merPHPDocTag "@package" containedin=phpDocTags 
	syntax match merPHPDocTag "@param" containedin=phpDocTags
	syntax match merPHPDocTag "@property" containedin=phpDocTags 
	syntax match merPHPDocTag "@property-read" containedin=phpDocTags 
	syntax match merPHPDocTag "@property-write" containedin=phpDocTags 
	syntax match merPHPDocTag "@return" containedin=phpDocTags 
	syntax match merPHPDocTag "@see" containedin=phpDocTags 
	syntax match merPHPDocTag "@since" containedin=phpDocTags 
	syntax match merPHPDocTag "@source" containedin=phpDocTags 
	syntax match merPHPDocTag "@subpackage" containedin=phpDocTags 
	syntax match merPHPDocTag "@throws" containedin=phpDocTags 
	syntax match merPHPDocTag "@todo" containedin=phpDocTags 
	syntax match merPHPDocTag "@uses" containedin=phpDocTags 
	syntax match merPHPDocTag "@used-by" containedin=phpDocTags
	syntax match merPHPDocTag "@var" containedin=phpDocTags 
	syntax match merPHPDocTag "@version" containedin=phpDocTags 
	highlight link merPHPDocTag Keyword 

"	let b:phpdocblock_syntax = 1

"endif
