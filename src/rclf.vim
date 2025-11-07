if exists("b:current_syntax")
finish
endif

syn match rclfComment "//.*$"

syn match rclfSection "\&rcl\>"
syn match rclfColumn "\&c\[[0-9]\+\]"
syn match rclfEnd "\&e\>"

syn region rclfString start=/"/ end=/"/ contains=rclfEscape
syn match rclfEscape "\\." contained

syn match rclfSep /[:;]/
syn match rclfArrayBracket /[()]/

syn match rclfBoolean /\v<(Yes|No|True|False)>/

syn match rclfNumber /\v<\d+(\.\d+)?([eE][+-]?\d+)?>/

syn region rclfArray start=/(/ end=/)/ contains=rclfString,rclfNumber,rclfBoolean,rclfSep,rclfEscape

syn match rclfIdent /\v<[A-Za-z_][A-Za-z0-9_\-]*>/

hi def link rclfComment Comment
hi def link rclfSection Keyword
hi def link rclfColumn Type
hi def link rclfEnd Keyword
hi def link rclfString String
hi def link rclfEscape SpecialChar
hi def link rclfSep Delimiter
hi def link rclfArrayBracket Delimiter
hi def link rclfBoolean Boolean
hi def link rclfNumber Number
hi def link rclfArray Structure
hi def link rclfIdent Identifier

let b:current_syntax = "rclf"
