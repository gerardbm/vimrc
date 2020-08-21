syn match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/ containedin=cssDefinition

hi VendorPrefix ctermfg=3 cterm=italic
