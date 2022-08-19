if exists('b:current_syntax')
  finish
endif

let s:del_def = ','
let s:del = '\%(' . s:del_def . '\|$\)'
let s:del_noend = '\%(' . s:del_def . '\)'
let s:col =
      \ '\%(\%(\%(' . (s:del_def !~# '\s' ? '\s*' : '') .
      \ '"\%(' . (exists("g:csv_nl") ? '\_' : '' ) .
      \ '[^"]\|""\)*"\s*\)' . s:del . '\)\|\%(' .
      \  '[^' .  s:del_def . ']*' . s:del . '\)\)'
let s:col_end = '\%(\%(\%(' . (s:del_def !~# '\s' ? '\s*' : '') .
      \ '"\%(' . (exists("g:csv_nl") ? '\_' : '' ) .
      \ '[^"]\|""\)*"\)' . s:del_noend . '\)\|\%(' .
      \  '[^' .  s:del_def . ']*' . s:del_noend . '\)\)'
let s:del = get(b:, 'delimiter', s:del_def)

exe 'syn match CSVColumnEven nextgroup=CSVColumnOdd /'
      \ . s:col . '/ contains=CSVDelimiter'
exe 'syn match CSVColumnOdd nextgroup=CSVColumnEven /'
      \ . s:col . '/ contains=CSVDelimiter'
exe 'syn match CSVDelimiter /' . s:col_end . '/ms=e,me=e contained'

hi def link CSVDelimiter Number
hi def link CSVColumnOdd Define
hi def link CSVColumnEven Keyword

let b:current_syntax = 'csv'
