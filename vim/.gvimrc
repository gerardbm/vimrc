" Hide menus
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=R

" Only remove menubar on non-windows platforms.
" The windows version looks a bit like ass without it,
" somehow, it develops ugly white borders around
" the bottom frame, I have no clue where they come from.
if !has("gui_win32")
	set guioptions-=m
endif

" Add Vim icon to window, where it is shown depends on platform, windowing
" system, X11 server depth, etc etc.
set guioptions+=i

" Automagically yank to windowing system clipboard on visual select.
" This makes gvim behave like a normal unix application.
set guioptions+=a

" Typography
if has("gui_gtk2") || has("gui_gtk3")
	set guifont=Terminess\ Powerline\ 13
elseif has("gui_macvim")
	set guifont=Menlo\ Regular:h14
elseif has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

" Toggle fullscreen
" - Don't need it anymore; i3wm does it (Super+f).
" map <silent> <S-F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" Set initial window size
" set lines=36 columns=144

" Disable mouse
" set mouse=c

" Colorscheme settings
" It is required to use the Atomic Color Scheme
" Source: https://github.com/gerardbm/vim-atomic
" function! AtomicSwitcher()
"   if (strftime('%H') > 8) && (strftime('%H') < 20)
"     AtomicSpaceMC
"   else
"     AtomicNightHC
"   endif
" endfunction

" call AtomicSwitcher()

AtomicSpaceMC

" Shortcuts
nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
nnoremap <Leader>1 :AtomicSpaceHC<CR>
nnoremap <Leader>2 :AtomicSpaceMC<CR>
nnoremap <Leader>3 :AtomicSpaceLC<CR>
nnoremap <Leader>4 :AtomicNightHC<CR>
nnoremap <Leader>5 :AtomicNightMC<CR>
nnoremap <Leader>6 :AtomicNightLC<CR>
nnoremap <Leader>7 :AtomicLightHC<CR>
nnoremap <Leader>8 :AtomicLightMC<CR>
nnoremap <Leader>9 :AtomicLightLC<CR>
nnoremap <Leader><F1> :AtomicOnionHC<CR>
nnoremap <Leader><F2> :AtomicOnionMC<CR>
nnoremap <Leader><F3> :AtomicOnionLC<CR>
nnoremap <Leader><F4> :AtomicBloodHC<CR>
nnoremap <Leader><F5> :AtomicBloodMC<CR>
nnoremap <Leader><F6> :AtomicBloodLC<CR>
nnoremap <Leader><F7> :AtomicGrassHC<CR>
nnoremap <Leader><F8> :AtomicGrassMC<CR>
nnoremap <Leader><F9> :AtomicGrassLC<CR>
nnoremap <Leader><F10> :AtomicOceanHC<CR>
nnoremap <Leader><F11> :AtomicOceanMC<CR>
nnoremap <Leader><F12> :AtomicOceanLC<CR>

" Paste ('p') from the clipboard
set clipboard=unnamedplus
