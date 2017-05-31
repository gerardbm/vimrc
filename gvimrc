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
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
elseif has("gui_macvim")
	set guifont=Menlo\ Regular:h14
elseif has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

" Toggle fullscreen
map <silent> <S-F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" Set initial window size
" set lines=36 columns=144

" Disable mouse
" set mouse=c

" Colorscheme settings
" It is required to use the colorscheme Atomic
" Source: https://github.com/gerardbm/atomic
function! AtomicSwitcher()
	if (strftime("%H") > 8) && (strftime("%H") < 20)
		AtomicDarkBlueSoft
	else
		AtomicNightRedHard
	endif
endfunction

call AtomicSwitcher()

" Shortcuts
nnoremap <S-F9> :call CycleModes()<CR>:colorscheme atomic<CR>
vnoremap <S-F9> :<C-u>call CycleModes()<CR>:colorscheme atomic<CR>gv

" Paste ('p') from the clipboard
set clipboard=unnamedplus
