" Links
syn region markdownLinkText matchgroup=markdownLinkTextDelimiter
			\ start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@="
			\ nextgroup=markdownLink,markdownId skipwhite
			\ contains=@markdownInline,markdownLineStart concealends
syn region markdownLink matchgroup=markdownLinkDelimiter
			\ start="(" end=")" keepend contained conceal contains=markdownUrl
syn cluster markdownInline add=@NoSpell

" Code
syn region markdownCode matchgroup=markdownCodeDelimiter
			\ start="`" end="`" concealends

" Extended
syn match markdownExt /{[.:#][^}]*}/ conceal

" Latex
let b:current_syntax = ''
unlet b:current_syntax
syn include syntax/tex.vim
syn region markdownTexMath matchgroup=markdownTexMathDelimiter
			\ start="\$\$\|\$" end="\$\$\|\$" contains=@texMathZoneGroup

" Highlights
hi markdownTexMathDelimiter ctermfg=5
hi markdownExt ctermfg=11 cterm=none
