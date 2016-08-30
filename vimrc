"----------------------------------------------------------------
"            _
"     _   __(_)___ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_)___/_/_/ /_/ /_/_/   \___/
"
"----------------------------------------------------------------
"  Version : 1.0.0
"  License : MIT
"  Author  : Gerard Bajona
"  URL     : https://github.com/gerardbm/dotfiles
"----------------------------------------------------------------
"  Index:
"   1. General settings
"   2. Plugins (Plug)
"   3. Plugins settings
"   4. User interface
"   5. Scheme and colors
"   6. Files and backup
"   7. Buffers management
"   8. Tabs management
"   9. Multiple windows
"  10. Indentation tabs
"  11. Moving around lines
"  12. Paste mode improved
"  13. Search and vimgrep
"  14. Text related
"  15. Running code
"  16. Helper functions
"----------------------------------------------------------------

"----------------------------------------------------------------
" 1. General settings
"----------------------------------------------------------------
" Disable vi compatibility
set nocompatible

" Reload .vimrc
nnoremap <F12> :so ~/.vimrc<CR>
vnoremap <F12> <Esc>:so ~/.vimrc<CR>gv
inoremap <F12> <C-O>:so ~/.vimrc<CR>

" Lines of memory to remember
set history=1000

" Leader key to add extra key combinations
let mapleader = ","
let g:mapleader = ","

" Time delay on <Leader> key
set timeoutlen=2000 ttimeoutlen=100

" Faster Escape key
vnoremap <Leader><Leader> <Esc>
inoremap <Leader><Leader> <Esc>

"----------------------------------------------------------------
" 2. Plugins (Plug)
"----------------------------------------------------------------
" List of plugins installed
call plug#begin('~/.vim/plugged')

	" Airline statusbar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'

	" Sessions
	Plug 'xolox/vim-session'
	Plug 'xolox/vim-misc'

	" Tools
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic'
	Plug 'valloric/listtoggle'
	Plug 'majutsushi/tagbar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'sjl/gundo.vim'

	" Languages
	Plug 'fatih/vim-go'
	Plug 'othree/html5.vim'
	Plug 'JulesWang/css.vim'
	Plug 'hail2u/vim-css3-syntax'
	Plug 'pangloss/vim-javascript'
	Plug 'vim-scripts/bash-support.vim'
	" Alternate Files quickly (.c --> .h)
	" Plug 'vim-scripts/a.vim'

	" Edition
	Plug 'junegunn/vim-easy-align'
	Plug 'godlygeek/tabular'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'

call plug#end()

"----------------------------------------------------------------
" 3. Plugins settings
"----------------------------------------------------------------
" Airline settings
let g:airline_theme='atomic'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
call airline#parts#define_accent('mode', 'black')

" Gitgutter settings
let g:gitgutter_max_signs = 5000
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '»'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_modified_removed = '»╌'

" Vim-session settings
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" NERDCommenter settings
let NERDSpaceDelims=1
nnoremap <C-C> :call NERDComment(0,'toggle')<CR>
vnoremap <C-C> :call NERDComment(0,"toggle")<CR>gv
inoremap <C-C> <C-O>:call NERDComment(0,"toggle")<CR>

" NERDTree settings
nnoremap <silent> <NUL> :call ToggleTree()<CR>
vnoremap <silent> <NUL> <Esc>:call ToggleTree()<CR>
inoremap <silent> <NUL> <C-O>:call ToggleTree()<CR>

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_perl_checker = 1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="xx"
let g:syntastic_warning_symbol="ww"
let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_perl_checkers=['perl']

" Listtoggle settings
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Tagbar toggle
nnoremap <C-T> :TagbarToggle<CR>
vnoremap <C-T> <Esc>:TagbarToggle<CR>gv
inoremap <C-T> <C-O>:TagbarToggle<CR>

" Gundo toggle
nnoremap <Leader>g :GundoToggle<CR>
vnoremap <Leader>g <Esc>:GundoToggle<CR>
inoremap <Leader>g <C-O>:GundoToggle<CR>

" CSS3 settings
augroup VimCSS3Syntax
	autocmd!
	autocmd FileType css setlocal iskeyword+=-
augroup END

" Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_bin_path = expand("~/.gotools")
"let g:go_list_type = "quickfix"

" Easy align settings
xnoremap ga <Plug>(EasyAlign)
nnoremap ga <Plug>(EasyAlign)

" Tabular settings
if exists(":Tabularize")
	" Tabularize (e.g. /= or /:)
	vnoremap <Leader>ta :Tabularize /
	" Tabularize only the first match on the line (e.g. /=.*/)
	vnoremap <Leader>te :Tabularize /.*/<Left><Left><Left>
endif

" Auto-apirs settings
let g:AutoPairsFlyMode = 1

" Surround settings
autocmd FileType php,html let b:surround_45 = "<?php \r ?>"

"----------------------------------------------------------------
" 4. User interface
"----------------------------------------------------------------
" Set X lines to the cursor when moving vertically
set scrolloff=5

" Always show mode
set showmode

" Show command keys pressed
set showcmd

" Enable the WiLd menu
set wildmenu

" Show the current position
set ruler

" Command bar height
set cmdheight=2

" Backspace works on Insert mode
set backspace=eol,start,indent

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Get ctrl+arrows working in tmux
if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

" Mouse
set mouse=a

" Hilight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2

"----------------------------------------------------------------
" 5. Scheme and colors
"----------------------------------------------------------------
" Enable 256 colors
if &term == "xterm" || &term == "xterm-256color"
	set t_Co=256
endif

" Enable syntax highlighting
syntax enable

" Use the dark scheme
set background=dark

" Colorscheme colors
colorscheme wombat256

"----------------------------------------------------------------
" 6. Files and backup
"----------------------------------------------------------------
" Disable swap files
set noswapfile

" No backup (use Git instead)
set nobackup

" Prevents automatic write backup
set nowritebackup

" Use UTF-8 as default encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Autoread a file when it is changed from the outside
set autoread

" Reload a file when it is changed from the outside
let f5msg = "File reloaded."
nnoremap <F5> :e<CR>:echo f5msg<CR>
vnoremap <F5> <Esc>:e<CR>:echo f5msg<CR>gv
inoremap <F5> <C-O>:e<CR><C-O>:echo f5msg<CR>

" Don't force filetype
filetype off

" Enable filetype plugins
filetype plugin on
filetype indent on

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

" Use CTRL-S and <Leader>s for saving
nnoremap <Leader>s :update<CR>
vnoremap <Leader>s <Esc>:update<CR>gv
inoremap <Leader>s <C-O>:update<CR>

" Save all buffers
nnoremap <Leader>S :bufdo update<CR>
vnoremap <Leader>S <Esc>:bufdo update<CR>gv
inoremap <Leader>S <C-O>:bufdo update<CR>

" Rename file
nnoremap <F2> :call RenameFile()<CR>
vnoremap <F2> <Esc>:call RenameFile()<CR>
inoremap <F2> <C-O>:call RenameFile()<CR>

"----------------------------------------------------------------
" 7. Buffers management
"----------------------------------------------------------------
" Buffer hidden when it is abandoned
set hidden

" Close the current buffer
nnoremap <Leader>bd :Bclose<CR>
vnoremap <Leader>bd <Esc>:Bclose<CR>
inoremap <Leader>bd <Esc>:Bclose<CR>

" Close all the buffers
nnoremap <Leader>ba :1,1000 bd!<CR>
vnoremap <Leader>ba <Esc>:1,1000 bd!<CR>
inoremap <Leader>ba <Esc>:1,1000 bd!<CR>

" Move between buffers using Shift+[h/l]
nnoremap <C-H> :bprev<CR>
vnoremap <C-H> <Esc>:bprev<CR>

nnoremap <C-L> :bnext<CR>
vnoremap <C-L> <Esc>:bnext<CR>

" Edit and explore buffers
nnoremap <Leader>bb :edit <C-R>=expand("%:p:h")<CR>/
vnoremap <Leader>bb <Esc>:edit <C-R>=expand("%:p:h")<CR>/
inoremap <Leader>bb <Esc>:edit <C-R>=expand("%:p:h")<CR>/

nnoremap <Leader>bg :buffers<CR>:buffer<Space>
vnoremap <Leader>bg <Esc>:buffers<CR>:buffer<Space>
inoremap <Leader>bg <Esc>:buffers<CR>:buffer<Space>

" Switch CWD to the directory of the open buffer
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Remember info about open buffers on close
set viminfo^=%

"----------------------------------------------------------------
" 8. Tabs management
"----------------------------------------------------------------
" Create and close tabs
nnoremap <Leader>td :tabclose<CR>
vnoremap <Leader>td <Esc>:tabclose<CR>gv
inoremap <Leader>td <Esc>:tabclose<CR>

nnoremap <Leader>to :tabonly<CR>
vnoremap <Leader>to <Esc>:tabonly<CR>gv
inoremap <Leader>to <Esc>:tabonly<CR>

" Open a new tab with the current buffer's path
" Useful when editing files in the same directory
nnoremap <Leader>tt :tabedit <C-R>=expand("%:p:h")<CR>/
vnoremap <Leader>tt <Esc>:tabedit <C-R>=expand("%:p:h")<CR>/
inoremap <Leader>tt <Esc>:tabedit <C-R>=expand("%:p:h")<CR>/

" Move tabs position
nnoremap <Leader>tr :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
vnoremap <Leader>tr <Esc>:execute 'silent! tabmove ' . (tabpagenr()-2)<CR>gv
inoremap <Leader>tr <C-O>:execute 'silent! tabmove ' . (tabpagenr()-2)<CR>

nnoremap <Leader>ty :execute 'silent! tabmove ' . tabpagenr()<CR>
vnoremap <Leader>ty <Esc>:execute 'silent! tabmove ' . tabpagenr()<CR>gv
inoremap <Leader>ty <C-O>:execute 'silent! tabmove ' . tabpagenr()<CR>

"----------------------------------------------------------------
" 9. Multiple windows
"----------------------------------------------------------------
" Remap wincmd
map <Leader>. <C-W>

set winminheight=0
set winminwidth=0
set splitbelow
set splitright

" Split windows
map <C-W>, :split<CR>
map <C-W>. :vsplit<CR>
map <C-W><CR> :close<CR>
map <C-W>x :q!<CR>

" Resizing windows
if bufwinnr(1)
	map + <C-W>+
	map - <C-W>-
	map < <C-W><
	map > <C-W>>
endif

" Toggle resize window
nnoremap <silent> <F10> :ToggleResize<CR>
vnoremap <silent> <F10> <Esc>:ToggleResize<CR>gv
inoremap <silent> <F10> <C-O>:ToggleResize<CR>

"Resize all windows proportionally when the terminal is resized
autocmd VimResized * :wincmd =

" Last window
nnoremap <silent> <C-W>l :wincmd p<CR>:echo "Last window."<CR>

" Previous and next windows
nnoremap <silent> <C-W>p :wincmd w<CR>:echo "Previous window."<CR>
nnoremap <silent> <C-W>n :wincmd W<CR>:echo "Next window."<CR>
nnoremap <silent> <C-W>o :wincmd o<CR>:echo "Only one window."<CR>

" Navigate between windows
nnoremap <S-H> :wincmd h<CR>:echo "Left."<CR>
nnoremap <S-J> :wincmd j<CR>:echo "Down."<CR>
nnoremap <S-K> :wincmd k<CR>:echo "Up."<CR>
nnoremap <S-L> :wincmd l<CR>:echo "Right."<CR>

vnoremap <S-H> <Esc>:wincmd h<CR>:echo "Left."<CR>gv
vnoremap <S-J> <Esc>:wincmd j<CR>:echo "Down."<CR>gv
vnoremap <S-K> <Esc>:wincmd k<CR>:echo "Up."<CR>gv
vnoremap <S-L> <Esc>:wincmd l<CR>:echo "Right."<CR>gv

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm

"----------------------------------------------------------------
" 10. Indentation tabs
"----------------------------------------------------------------
" Enable autoindent & smartindent
set autoindent
set smartindent

" Use tabs, no spaces
set noexpandtab

" Be smart when using tabs
set smarttab

" Tab size (in spaces)
set shiftwidth=4
set tabstop=4

" Remap indentation: use tab and recover the last selection
vnoremap > >gv
vnoremap < <gv

nnoremap <Tab> >>
vnoremap <Tab> >gv

nnoremap <S-Tab> <<
vnoremap <S-Tab> <gv

" Don't show tabs
set list

let f6msg = "Toggle list."
nnoremap <F6> :set list!<CR>:echo f6msg<CR>
vnoremap <F6> <Esc>:set list!<CR>:echo f6msg<CR>gv
inoremap <F6> <C-O>:set list!<CR><C-O>:echo f6msg<CR>

" Show tabs and end-of-lines
set listchars=tab:│\ ,trail:·

" Delete trailing white space on save
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.* :call DeleteTrailingWS() " All files

"----------------------------------------------------------------
" 11. Moving around lines
"----------------------------------------------------------------
" Specify which commands wrap to another line
set whichwrap+=<,>,h,l

" Many jump commands move the cursor to the start of line
set nostartofline

" Wrap lines into the window
set wrap

" Don't break the words
" Only works if I set nolist (F6)
set linebreak
set showbreak=»

" Stop automatic wrapping
set textwidth=0

" Column at 100 width
set colorcolumn=100

" Color column
let f9msg = "Toggle colorcolumn."
nnoremap <silent> <F9> :call <SID>ToggleColorColumn()<CR>:echo f9msg<CR>
vnoremap <silent> <F9> <Esc>:call <SID>ToggleColorColumn()<CR>:echo f9msg<CR>gv
inoremap <silent> <F9> <C-O>:call <SID>ToggleColorColumn()<CR><C-O>:echo f9msg<CR>

" Show line numbers
set nonumber
set numberwidth=2

let f3msg = "Toggle line numbers."
nnoremap <silent> <F3> :set number!<CR>:echo f3msg<CR>
vnoremap <silent> <F3> <Esc>:set number!<CR>:echo f3msg<CR>gv
inoremap <silent> <F3> <C-O>:set number!<CR><C-O>:echo f3msg<CR>

" Set relative line numbers
set relativenumber

let f4msg = "Toggle relative line numbers."
nnoremap <silent> <F4> :set norelativenumber!<CR>:echo f4msg<CR>
vnoremap <silent> <F4> <Esc>:set norelativenumber!<CR>:echo f4msg<CR>gv
inoremap <silent> <F4> <C-O>:set norelativenumber!<CR><C-O>:echo f4msg<CR>

" Treat long lines as break lines (useful when moving around in them)
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> <Up> (v:count == 0 ? 'g<Up>' : '<Up>')
nnoremap <silent> <expr> <Down> (v:count == 0 ? 'g<Down>' : '<Down>')

vnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
vnoremap <silent> <expr> <Up> (v:count == 0 ? 'g<Up>' : '<Up>')
vnoremap <silent> <expr> <Down> (v:count == 0 ? 'g<Down>' : '<Down>')

nnoremap <Leader>4 g$
nnoremap <Leader>6 g^
nnoremap <Home> g^
nnoremap <End> g$

vnoremap <Leader>6 g^
vnoremap <Leader>4 g$
vnoremap <Home> g^
vnoremap <End> g$

" Move lines using Shift+[k/j]
nnoremap <C-K> :m .-2<CR>==
vnoremap <C-K> :m '<-2<CR>gv=gv
inoremap <C-K> <Esc>:m .-2<CR>==gi

nnoremap <C-J> :m .+1<CR>==
vnoremap <C-J> :m '>+1<CR>gv=gv
inoremap <C-J> <Esc>:m .+1<CR>==gi

" Move lines using Ctrl+[Up/Down]
nnoremap <C-Down> :m .+1<CR>==
vnoremap <C-Down> :m '>+1<CR>gv=gv
inoremap <C-Down> <Esc>:m .+1<CR>==gi

nnoremap <C-Up> :m .-2<CR>==
vnoremap <C-Up> :m '<-2<CR>gv=gv
inoremap <C-Up> <Esc>:m .-2<CR>==gi

" Duplicate a line using <Leader>
nnoremap <Leader>ds yyP
vnoremap <Leader>ds <Esc>yyPgv
inoremap <Leader>ds <Esc>yyPi

nnoremap <Leader>df yyp
vnoremap <Leader>df <Esc>yypgv
inoremap <Leader>df <Esc>yypi

" Duplicate a line using Ctrl+Shift+[Up/Down]
nnoremap <C-S-Up> yyP
vnoremap <C-S-Up> <Esc>yyPgv
inoremap <C-S-Up> <Esc>yyPi

nnoremap <C-S-Down> yyp
vnoremap <C-S-Down> <Esc>yypgv
inoremap <C-S-Down> <Esc>yypi

" Sort a selection of lines
vnoremap <Leader>z <ESC>{!}sort<CR>}

" Folding
set foldmethod=manual

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

"----------------------------------------------------------------
" 12. Paste mode improved
"----------------------------------------------------------------
" When the 'paste' option is enabled:
" - mapping in Insert mode and Command-line mode is disabled
" - abbreviations are disabled
" - etc. (see :help 'paste' for more information).

" Enable auto-indenting for code paste
set nopaste

" Auto-toggle Paste Mode when pasting text
function! WrapForTmux(s)
	if !exists('$TMUX')
		return a:s
	endif

	let tmux_start = "\<Esc>Ptmux;"
	let tmux_end = "\<Esc>\\"

	return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
	set pastetoggle=<Esc>[201~
	set paste
	return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" Toggle Paste Mode manually
let f7msg = "Toggle paste mode."
nnoremap <F7> :setlocal paste!<CR>:echo f7msg<CR>
vnoremap <F7> <Esc>:setlocal paste!<CR>:echo f7msg<CR>gv
inoremap <F7> <C-O>:setlocal paste!<CR><C-O>:echo f7msg<CR>

"----------------------------------------------------------------
" 13. Search and vimgrep
"----------------------------------------------------------------
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Search, wrap around the end of the buffer
set wrapscan

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" For regular expressions turn magic on
set magic

" Maximum amount of memory in Kbyte used for pattern matching
set mmp=1000

" --- Highlight ---
"----------------------------------------------------------------
" Map <Space> to / (search)
nnoremap <Space> /

" Search word under the cursor
nnoremap <CR> *

" Search the selected text (visual mode)
vnoremap <CR> :<C-U>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-U>call <SID>VSetSearch()<CR>??<CR>

" Disable highlight
nnoremap <Leader><CR> :noh<CR>
vnoremap <Leader><CR> <Esc>:noh<CR>gv
inoremap <Leader><CR> <C-O>:noh<CR>

" --- Vimgrep ---
"----------------------------------------------------------------
" Vimgrep the hilight in the current file
nnoremap <Leader><Space> :vimgrep /<C-R>// %

" Vimgrep the hilight into the current selection
vnoremap <Leader><Space> :vimgrep /<C-R>// %

" Vimgrep the hilight in the current directory and subdirectories
nnoremap <Leader>v :vimgrep /<C-R>// **/*.*

" Navigate between vimgrep results
nnoremap <Leader>n :cnext<CR>
nnoremap <Leader>p :cprev<CR>

" Quickfix/location list windows use <CR> to jump to errors
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" --- Replace ---
"----------------------------------------------------------------
" Replace the word under the cursor
nnoremap <Leader>e :s/\<<C-R><C-W>\>//<Left>

" Replace the highlight in the current file
nnoremap <Leader>r :%s/<C-R>///g<Left><Left>

" Replace the hilight into the current selection
" Flag \%V --> Match only inside the Visual selection
vnoremap <Leader>r :s/\%V<C-R>/\%V//g<Left><Left>

" Replace the hilight to all project
nnoremap <Leader>as :args *.
nnoremap <Leader>aa :args **/*.
nnoremap <Leader>ar :argdo %s/<C-R>///cge\|up<Left><Left><Left><Left><Left><Left><Left>

"----------------------------------------------------------------
" 14. Text related
"----------------------------------------------------------------
" Toggle case
vnoremap <Leader>x y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv

" Backspace removes the last character
nnoremap <BS> X

" Increase and decrease numbers
nnoremap <C-S> <C-A>
nnoremap <C-X> <C-X>

" Toggle and untoggle spell checking
let f8msg = "Toggle spell checking."
nnoremap <silent> <F8> :setlocal spell!<CR>:echo f8msg<CR>
vnoremap <silent> <F8> <Esc>:setlocal spell!<CR>:echo f8msg<CR>gv
inoremap <silent> <F8> <C-O>:setlocal spell!<CR><C-O>:echo f8msg<CR>

" Move to next misspelled word
nnoremap <Leader>wn ]s

" Find the misspelled word before the cursor
nnoremap <Leader>wp [s

" Add word under the cursor as a good word
nnoremap <Leader>wa zg

" Mark the word under the cursor as wrong
nnoremap <Leader>wx zw

" Suggest correctly spelled words
nnoremap <Leader>w? z=

" Copy text into the clipboard
vnoremap <Leader>y "+y<Esc>

" Copy all content into the clipboard
nnoremap <Leader>y <Esc>ggVG"+y<Esc><C-O><C-O>

"----------------------------------------------------------------
" 15. Running code
"----------------------------------------------------------------
" Set makeprg
autocmd FileType sh setlocal makeprg=clear\ &&\ bash\ %
autocmd FileType perl setlocal makeprg=clear\ &&\ perl\ %
autocmd FileType python setlocal makeprg=clear\ &&\ python\ %
autocmd FileType javascript setlocal makeprg=clear\ &&\ node\ %
autocmd FileType php setlocal makeprg=clear\ &&\ php\ %
autocmd FileType ruby setlocal makeprg=clear\ &&\ ruby\ %
autocmd FileType go setlocal makeprg=clear\ &&\ go\ run\ %

if !filereadable(expand("%:p:h")."/Makefile")
	autocmd FileType c setlocal makeprg=clear\ &&\ gcc\ %\ &&\ ./a.out
	autocmd FileType cpp setlocal makeprg=clear\ &&\ g++\ %\ &&\ ./a.out
endif

" Go to the error line
set errorformat=%m\ in\ %f\ on\ line\ %l

" Run code
nnoremap <silent> <Leader><Tab> :update<CR>:make<CR>

"----------------------------------------------------------------
" 16. Helper functions
"----------------------------------------------------------------
" Search the selected text (visual mode)
" Source: https://github.com/nelstrom/vim-visual-star-search
" (You can install it as a plugin)
function! s:VSetSearch()
	let temp = @@
	norm! gvy
	let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
	let @@ = temp
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif

	if bufnr("%") == l:currentBufNum
		new
	endif

	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

" New :windo command to return to the last current window
" - Default :windo cycles through all the open windows
" - Use 'Windo' instead of 'windo' to avoid it
command! -nargs=+ -complete=command Windo
	\ let s:currentWindow = winnr() |
	\ execute "windo <args>" |
	\ exe s:currentWindow . "wincmd w"

" Toggle colorcolumn
let s:color_column_old = 0

function! s:ToggleColorColumn()
	if s:color_column_old == 0
		let s:color_column_old = &colorcolumn
		Windo let &colorcolumn = 0
	else
		Windo let &colorcolumn = s:color_column_old
		let s:color_column_old = 0
	endif
endfunction

" Toggle maximize window and resize windows
function! s:ToggleResize() abort
	if exists('t:zoomed') && t:zoomed
		execute t:zoom_winrestcmd
		let t:zoomed = 0
		echo "Windows resized."
	else
		let t:zoom_winrestcmd = winrestcmd()
		resize
		vertical resize
		let t:zoomed = 1
		echo "Window maximized."
	endif
endfunction
command! ToggleResize call s:ToggleResize()

" Toggle case
function! ToggleCase(str)
	if a:str ==# toupper(a:str)
		let result = tolower(a:str)
	elseif a:str ==# tolower(a:str)
		let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
	else
		let result = toupper(a:str)
	endif
	return result
endfunction

" Better toggle for NERDTree
function! ToggleTree()
	if (exists ("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1))
		if &modifiable
			execute "NERDTreeFocus"
		else
			execute "NERDTreeClose"
		endif
	else
		execute "NERDTreeFind"
	endif
endfunction

" Auto-tabularize a table while editing
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
	let p = '^\s*|\s.*\s|\s*$'
	if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
		let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
		Tabularize/|/l1
		normal! 0
		call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

" Rename file
function! RenameFile()
	let old_name = expand('%')
	let new_name = input('New file name: ', expand('%'), 'file')
	if new_name != '' && new_name != old_name
		exec ':saveas ' . new_name
		exec ':silent !rm ' . old_name
		redraw!
	endif
endfunction
