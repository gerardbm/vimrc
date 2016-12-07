"----------------------------------------------------------------
"            _
"     _   __(_)___ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_)___/_/_/ /_/ /_/_/   \___/
"
"----------------------------------------------------------------
"  Version : 1.6.0
"  License : MIT
"  Author  : Gerard Bajona
"  URL     : https://github.com/gerardbm/vimrc
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
"  14. Text edition
"  15. Make settings
"  16. Filetype settings
"  17. Helper functions
"----------------------------------------------------------------

"----------------------------------------------------------------
" 1. General settings
"----------------------------------------------------------------
" Disable vi compatibility
set nocompatible

" Reload .vimrc
nnoremap <F12> :so $MYVIMRC<CR>
vnoremap <F12> <Esc>:so $MYVIMRC<CR>gv
inoremap <F12> <C-O>:so $MYVIMRC<CR>

" Lines of memory to remember
set history=1000

" Leader key to add extra key combinations
let mapleader = ","
let g:mapleader = ","

" Time delay on <Leader> key
set timeoutlen=3000 ttimeoutlen=100

" Update time
set updatetime=250

" Faster Escape key
vnoremap <Leader><Leader> <Esc>
inoremap <Leader><Leader> <Esc>

" Trigger InsertLeave autocmd
inoremap <C-C> <Esc>

" No need for Ex mode
nnoremap Q <NOP>

" Open help in a vertical window
cnoreabbrev help vert help

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
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'sjl/gundo.vim'

	" Languages
	Plug 'fatih/vim-go'
	Plug 'JulesWang/css.vim'
	Plug 'hail2u/vim-css3-syntax'
	Plug 'itspriddle/vim-jquery'
	Plug 'pangloss/vim-javascript'
	Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
	Plug 'vim-scripts/a.vim'

	" Autocomplete
	Plug 'ervandew/supertab'
	Plug 'Shougo/neocomplete.vim'
	Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
	Plug 'davidhalter/jedi-vim'
	Plug 'othree/jspc.vim'
	Plug 'othree/html5.vim'
	Plug 'm2mdas/phpcomplete-extended'
	Plug 'Rip-Rip/clang_complete'

	" Snippets
	Plug 'Shougo/neosnippet'
	Plug 'Shougo/neosnippet-snippets'
	Plug 'Shougo/context_filetype.vim'

	" Run code
	Plug 'thinca/vim-quickrun'
	Plug 'Shougo/vimproc.vim', {'do' : 'make'}
	Plug 'Shougo/vimshell.vim'

	" Edition
	Plug 'junegunn/vim-easy-align'
	Plug 'godlygeek/tabular'
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-capslock'
	Plug 'wellle/targets.vim'
	Plug 'christoomey/vim-sort-motion'
	Plug 'terryma/vim-expand-region'
	Plug 'Valloric/MatchTagAlways'
	Plug 'FooSoft/vim-argwrap'

	" Misc
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'joeytwiddle/sexy_scroller.vim'
	Plug 'suan/vim-instant-markdown'
	Plug 'tpope/vim-characterize'
	Plug 'tyru/open-browser.vim'
	Plug 'mattn/webapi-vim'
	Plug 'mattn/emmet-vim'

call plug#end()

"----------------------------------------------------------------
" 3. Plugins settings
"----------------------------------------------------------------
" Airline settings
let g:airline_theme                       = 'atomic'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
call airline#parts#define_accent('mode', 'black')

" Gitgutter settings
let g:gitgutter_max_signs             = 5000
let g:gitgutter_sign_added            = '+'
let g:gitgutter_sign_modified         = '»'
let g:gitgutter_sign_removed          = '_'
let g:gitgutter_sign_modified_removed = '»╌'
let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'

nmap <Leader>j <Plug>GitGutterNextHunkzz
nmap <Leader>k <Plug>GitGutterPrevHunkzz
nmap <silent> <C-P> :call <SID>ToggleGGPrev()<CR>zz

" Fugitive settings
nmap <Leader>g :<C-U>call <SID>ToggleGsPrev()<CR>

" Vim-session settings
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" NERDCommenter settings
let g:NERDDefaultAlign          = 'left'
let g:NERDSpaceDelims           = 1
let g:NERDCompactSexyComs       = 1
let g:NERDCommentEmptyLines     = 0
let g:NERDCreateDefaultMappings = 0

nnoremap <Leader>c :call NERDComment(0,'toggle')<CR>
vnoremap <Leader>c :call NERDComment(0,"toggle")<CR>gv
inoremap <Leader>c <C-O>:call NERDComment(0,"toggle")<CR>

" NERDTree settings
nnoremap <silent> <C-N> :call ToggleTree()<CR>

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 0
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_aggregate_errors         = 1
let g:syntastic_enable_perl_checker      = 1
let g:syntastic_enable_signs             = 1
let g:syntastic_echo_current_error       = 1
let g:syntastic_go_checkers              = ['golint', 'govet']
let g:syntastic_perl_checkers            = ['perl']
let g:syntastic_javascript_checkers      = ['jshint']
let g:syntastic_error_symbol             = "✖"
let g:syntastic_warning_symbol           = "⚠"
let g:syntastic_style_error_symbol       = "S✖"
let g:syntastic_style_warning_symbol     = "S⚠"

nnoremap <Leader>h :lprevious<CR>zz
vnoremap <Leader>h <Esc>:lprevious<CR>gvzz
inoremap <Leader>h <C-O>:lprevious<CR>zz

nnoremap <Leader>l :lnext<CR>zz
vnoremap <Leader>l <Esc>:lnext<CR>gvzz
inoremap <Leader>l <C-O>:lnext<CR>zz

" Listtoggle settings
let g:lt_location_list_toggle_map = '<leader>e'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" Tagbar toggle
nnoremap <F4> :TagbarToggle<CR>
vnoremap <F4> <Esc>:TagbarToggle<CR>gv
inoremap <F4> <C-O>:TagbarToggle<CR>

" CtrlP settings
let g:ctrlp_map               = '<C-c>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_prompt_mappings   = {
	\ 'ToggleType(1)'  : ['<c-h>', '<c-up>'],
	\ 'ToggleType(-1)' : ['<c-l>', '<c-down>'],
	\ 'PrtCurLeft()'   : ['<c-b>', '<left>', '<c-^>'],
	\ 'PrtCurRight()'  : ['<c-f>', '<right>'],
	\ }

" FZF settings
let g:fzf_layout = { 'down': '~25%' }

nnoremap <Leader>z :FZF<CR>
vnoremap <Leader>z <Esc>:FZF<CR>gv
inoremap <Leader>z <C-O>:FZF<CR>

nnoremap <Leader>Z :Commits<CR>
vnoremap <Leader>Z <Esc>:Commits<CR>gv
inoremap <Leader>Z <C-O>:Commits<CR>

" Gundo toggle
nnoremap <Leader>u :GundoToggle<CR>
vnoremap <Leader>u <Esc>:GundoToggle<CR>
inoremap <Leader>u <C-O>:GundoToggle<CR>

" Go settings
let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_fields            = 1
let g:go_highlight_types             = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1
let g:go_bin_path                    = expand("~/.gotools")
let g:go_list_type                   = "quickfix"

" CSS3 settings
augroup VimCSS3Syntax
	autocmd!
	autocmd FileType css setlocal iskeyword+=-
augroup END

" Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1

" Neocomplete settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Python autocompletion
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0

" Clang autocompletion
let g:clang_complete_auto              = 0
let g:clang_auto_select                = 0
let g:clang_omnicppcomplete_compliance = 0
let g:clang_make_default_keymappings   = 0
let g:clang_use_library                = 1

" SuperTab settings
let g:SuperTabDefaultCompletionType = '<TAB>'

" Neosnippet settings
imap <C-D> <Plug>(neosnippet_expand_or_jump)
smap <C-D> <Plug>(neosnippet_expand_or_jump)
xmap <C-D> <Plug>(neosnippet_expand_target)

" Behaviour like SuperTab
smap <expr><TAB>
	\ neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif

autocmd InsertLeave * NeoSnippetClearMarkers

" QuickRun settings
let g:quickrun_no_default_key_mappings = 0

" Vimshell settings
nnoremap <C-Z> :VimShell<CR>

" Easy align settings
xmap gi <Plug>(EasyAlign)
nmap gi <Plug>(EasyAlign)

" Tabularize (e.g. /= or /:)
vnoremap <Leader>x :Tabularize /

" Tabularize only the first match on the line (e.g. /=.*/)
vnoremap <Leader>X :Tabularize /.*/<Left><Left><Left>

" Auto-apirs settings
let g:AutoPairsFlyMode = 0

" Closetag settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml"
autocmd Filetype php iab <? <?php ?><Left><Left><Left>
autocmd Filetype * iab <% <% %><Left><Left><Left>

" Surround settings
" Use 'yss?', 'yss%' or 'yss=' to surround a line
autocmd FileType php let b:surround_63 = "<?php \r ?>"
let g:surround_37 = "<% \r %>"
let g:surround_61 = "<%= \r %>"

" Caps Lock settings
imap <expr><C-L> neocomplete#smart_close_popup()."\<Plug>CapsLockToggle"

" Expand region settings
vmap v <Plug>(expand_region_expand)
vmap <C-V> <Plug>(expand_region_shrink)

" MatchTagAlways settings
let g:mta_filetypes = {
	\ 'html'  : 1,
	\ 'xhtml' : 1,
	\ 'xml'   : 1,
	\ 'jinja' : 1,
	\ 'php'   : 1,
	\ }

" ArgWrap settings
let g:argwrap_tail_comma    = 1
let g:argwrap_padded_braces = '[{'

nnoremap <Leader>W :ArgWrap<CR>

" Vim-tmux navigator settings
let g:tmux_navigator_no_mappings = 1

" Instant markdown settings
let g:instant_markdown_autostart = 0

nnoremap <Leader>M :InstantMarkdownPreview<CR>
vnoremap <Leader>M <Esc>:InstantMarkdownPreview<CR>gv
inoremap <Leader>M <C-O>:InstantMarkdownPreview<CR>

" Openbrowser settings
nmap gl <Plug>(openbrowser-open)

"----------------------------------------------------------------
" 4. User interface
"----------------------------------------------------------------
" Set X lines to the cursor when moving vertically
set scrolloff=0

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
if exists('$TMUX')
	" Tmux knows the extended mouse mode
	set ttymouse=xterm2
	" Tmux will send xterm-style keys when xterm-keys is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
	execute "set <xHome>=\e[1;*H"
	execute "set <xEnd>=\e[1;*F"
	execute "set <Insert>=\e[2;*~"
	execute "set <Delete>=\e[3;*~"
	execute "set <PageUp>=\e[5;*~"
	execute "set <PageDown>=\e[6;*~"
	execute "set <xF1>=\e[1;*P"
	execute "set <xF2>=\e[1;*Q"
	execute "set <xF3>=\e[1;*R"
	execute "set <xF4>=\e[1;*S"
	execute "set <F5>=\e[15;*~"
	execute "set <F6>=\e[17;*~"
	execute "set <F7>=\e[18;*~"
	execute "set <F8>=\e[19;*~"
	execute "set <F9>=\e[20;*~"
	execute "set <F10>=\e[21;*~"
	execute "set <F11>=\e[23;*~"
	execute "set <F12>=\e[24;*~"
endif

" Mouse
set mousehide

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
set laststatus=2

" Change the cursor shape
if &term =~ 'xterm\|tmux'
	if exists('$TMUX')
		let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
		if (v:version == 704 && has("patch687") || v:version >= 800)
			let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
		endif
		let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	else
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		if (v:version == 704 && has("patch687") || v:version >= 800 )
			let &t_SR = "\<Esc>]50;CursorShape=2\x7"
		endif
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
endif

" Omni completion
if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
	\ if &omnifunc == "" |
	\     setlocal omnifunc=syntaxcomplete#Complete |
	\ endif
endif

"----------------------------------------------------------------
" 5. Scheme and colors
"----------------------------------------------------------------
" Enable 256 colors
if &term =~ '256color' || has('gui_running')
	set t_Co=256
endif

" Enable syntax highlighting
syntax enable

" Use the dark scheme
set background=dark

" Colorscheme colors
colorscheme atomic

" Reload the current colorscheme
nnoremap <S-F12> :call GetColorschemeName()<CR>

" Show syntax highlighting groups
nnoremap <C-S> :call <SID>SynStack()<CR>

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
let f5msg = "Buffer reloaded."
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

" Save the current buffer
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

" Delete file
nnoremap <Leader><Del>y :call DeleteFile()<CR>
vnoremap <Leader><Del>y <Esc>:call DeleteFile()<CR>
inoremap <Leader><Del>y <Esc>:call DeleteFile()<CR>

" Work on all file, p.e:
" - yaf (yank all file)
" - vaf (select all file)
onoremap af :<C-U>normal! ggVG<Esc><C-O><C-O>
onoremap aF :<C-U>normal! ggVG"+y<Esc><C-O><C-O>
vnoremap af :<C-U>normal! ggVG<Esc>

" Rename title of tmux tab with current filename
if exists('$TMUX')
	autocmd BufEnter * call system("tmux rename-window '" . expand("%:t") . "'")
	autocmd VimLeave * call system("tmux setw automatic-rename")
endif

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

" Move between buffers
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

" Switch CWD to the directory of the current buffer
nnoremap <Leader>bw :cd %:p:h<CR>:pwd<CR>

" Copy the filepath to clipboard
nnoremap <Leader>by :let @+=expand("%:p")<CR>

" Expand '%%' to the path of the current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Ignore case when autocompletes when browsing files
set fileignorecase

" Specify the behavior when switching between buffers
try
	set switchbuf=useopen,usetab,newtab
	set stal=2
catch
endtry

" Remember info about open buffers on close
" set viminfo^=%

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
map <C-W>- :split<CR>
map <C-W>. :vsplit<CR>
map <C-W><CR> :close<CR>
map <C-W>x :q!<CR>
map <C-W>, <C-W>=

" Resizing windows
if bufwinnr(1)
	map + :resize +1<CR>
	map - :resize -1<CR>
	map < :vertical resize +1<CR>
	map > :vertical resize -1<CR>
endif

" Toggle resize window
nnoremap <silent> <F10> :ToggleResize<CR>
vnoremap <silent> <F10> <Esc>:ToggleResize<CR>gv
inoremap <silent> <F10> <C-O>:ToggleResize<CR>

" Last window
nnoremap <silent> <C-W>l :wincmd p<CR>:echo "Last window."<CR>

" Previous and next windows
nnoremap <silent> <C-W>p :wincmd w<CR>:echo "Previous window."<CR>
nnoremap <silent> <C-W>n :wincmd W<CR>:echo "Next window."<CR>
nnoremap <silent> <C-W>o :wincmd o<CR>:echo "Only one window."<CR>

" Move between Vim windows and Tmux panes
" - It requires the corresponding configuration into Tmux.
" - Check it at my .tmux.conf from my Atomic files repository.
" - URL: https://github.com/gerardbm/atomic/blob/master/tmux/tmux.conf
" - Plugin required: https://github.com/christoomey/vim-tmux-navigator
set <M-h>=h
set <M-j>=j
set <M-k>=k
set <M-l>=l

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-p> :TmuxNavigatePrevious<cr>

vnoremap <silent> <M-h> <Esc>:TmuxNavigateLeft<CR>gv
vnoremap <silent> <M-j> <Esc>:TmuxNavigateDown<CR>gv
vnoremap <silent> <M-k> <Esc>:TmuxNavigateUp<CR>gv
vnoremap <silent> <M-l> <Esc>:TmuxNavigateRight<CR>gv
vnoremap <silent> <M-p> <Esc>:TmuxNavigatePrevious<CR>gv

inoremap <silent> <M-h> <C-O>:TmuxNavigateLeft<CR>
inoremap <silent> <M-j> <C-O>:TmuxNavigateDown<CR>
inoremap <silent> <M-k> <C-O>:TmuxNavigateUp<CR>
inoremap <silent> <M-l> <C-O>:TmuxNavigateRight<CR>
inoremap <silent> <M-p> <C-O>:TmuxNavigatePrevious<CR>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><CR>//ge<CR>'tzt`m

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

" Remap indentation
nnoremap <TAB> >>
nnoremap <S-TAB> <<

vnoremap <TAB> >gv
vnoremap <S-TAB> <gv

inoremap <TAB> <C-i>
inoremap <S-TAB> <C-d>

" Don't show tabs
set list

let f6msg = "Toggle list."
nnoremap <F6> :set list!<CR>:echo f6msg<CR>
vnoremap <F6> <Esc>:set list!<CR>:echo f6msg<CR>gv
inoremap <F6> <C-O>:set list!<CR><C-O>:echo f6msg<CR>

" Show tabs and end-of-lines
set listchars=tab:│\ ,trail:·

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
set showbreak=├——»

" Stop automatic wrapping
set textwidth=0

" Column at 100 width
set colorcolumn=100

" Listings don't pause
set nomore

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
nnoremap <silent> <S-F3> :set norelativenumber!<CR>:echo f4msg<CR>
vnoremap <silent> <S-F3> <Esc>:set norelativenumber!<CR>:echo f4msg<CR>gv
inoremap <silent> <S-F3> <C-O>:set norelativenumber!<CR><C-O>:echo f4msg<CR>

" Navigate from Insert Mode
inoremap <expr>@sh neocomplete#smart_close_popup()."\<Left>"
inoremap <expr>@sj neocomplete#smart_close_popup()."\<Down>"
inoremap <expr>@sk neocomplete#smart_close_popup()."\<Up>"
inoremap <expr>@sl neocomplete#smart_close_popup()."\<Right>"

" Treat long lines as break lines (useful when moving around in them)
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

vnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')

nnoremap <Leader>4 g$
nnoremap <Leader>6 g^
nnoremap <Home> g^
nnoremap <End> g$

vnoremap <Leader>6 g^
vnoremap <Leader>4 g$
vnoremap <Home> g^
vnoremap <End> g$

" Toggle the cursor position start/end of the line
nnoremap <silent> ñ :call <SID>ToggleCPosition()<CR>
vnoremap <silent> ñ <Esc>:call <SID>VToggleCPosition()<CR>

" Move lines
nnoremap <C-K> :m .-2<CR>==
vnoremap <C-K> :m '<-2<CR>gv=gv
inoremap <C-K> <Esc>:m .-2<CR>==gi

nnoremap <C-J> :m .+1<CR>==
vnoremap <C-J> :m '>+1<CR>gv=gv
inoremap <C-J> <Esc>:m .+1<CR>==gi

" Duplicate a line
nnoremap <Leader>ds yyP
vnoremap <Leader>ds <Esc>yyPgv
inoremap <Leader>ds <Esc>yyPi

nnoremap <Leader>df yyp
vnoremap <Leader>df <Esc>yypgv
inoremap <Leader>df <Esc>yypi

" Folding
set foldmethod=manual

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" --- Readline commands ---
"----------------------------------------------------------------
" Move the cursor to the line start
inoremap <C-A> <C-O>0

" Move the cursor to the line end
inoremap <C-E> <C-O>$

" Moves the cursor back one character
inoremap <expr><C-B> neocomplete#smart_close_popup()."\<Left>"

" Moves the cursor forward one character
inoremap <expr><C-F> neocomplete#smart_close_popup()."\<Right>"

" Moves the cursor one character from Command Mode
cnoremap @sh <Left>
cnoremap @sl <Right>

cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

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

" Highlight the word under the cursor and don't jump to next
nnoremap <silent> <Leader><CR> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Highlight the selected text and don't jump to next
vnoremap <silent> <Leader><CR> :<C-U>call <SID>VSetSearch()<CR>:set hls<CR>

" Disable highlight
nnoremap <Leader><BS> :noh<CR>
vnoremap <Leader><BS> <Esc>:noh<CR>gv
inoremap <Leader><BS> <C-O>:noh<CR>

" Search into a Visual selection
vnoremap <silent> <Space> :<C-U>call RangeSearch('/')<CR>
	\ :if strlen(g:srchstr) > 0
	\ \|exec '/'.g:srchstr\|endif<CR>n
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>
	\ :if strlen(g:srchstr) > 0
	\ \|exec '?'.g:srchstr\|endif<CR>N

" --- Vimgrep ---
"----------------------------------------------------------------
" Vimgrep the highlight in the current file
nnoremap <Leader>v :vimgrep /<C-R>//j % \| copen<CR>

" Vimgrep the highlight in the visual selection
vnoremap <Leader>v :vimgrep /\%V<C-R>/\%V/j % \| copen<CR>

" Vimgrep the highlight in the current directory and subdirectories
nnoremap <Leader>V :vimgrep /<C-R>//j **/*. \| copen
	\ <Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Navigate between vimgrep results
nnoremap <Leader>n :cnext<CR>zz
nnoremap <Leader>N :cprev<CR>zz

" Jump to the results in buffers (first open window), not tabs
set switchbuf=useopen

" --- Replace ---
"----------------------------------------------------------------
" Replace the highlight in the current file
nnoremap <Leader>r :%s/<C-R>///g<Left><Left>

" Replace the highlight in the visual selection
" Flag \%V --> Match only inside the visual selection
vnoremap <Leader>r :s/\%V<C-R>/\%V//g<Left><Left>

" Replace the highlight to all open buffers
nnoremap <Leader>R :argdo %s/<C-R>///cge
	\ \|up<Left><Left><Left><Left><Left><Left><Left><Left>

" Populate the argslist
nnoremap <Leader>a :args *.
nnoremap <Leader>A :args **/*.

"----------------------------------------------------------------
" 14. Text edition
"----------------------------------------------------------------
" Toggle case
nnoremap <Leader>< ~
inoremap <Leader>< ~
vnoremap <Leader>< y:call setreg('', ToggleCase(@"), getregtype(''))<CR>gv""Pgv

" Toggle and untoggle spell checking
let f8msg = "Toggle spell checking."
nnoremap <silent> <F8> :setlocal spell!<CR>:echo f8msg<CR>
vnoremap <silent> <F8> <Esc>:setlocal spell!<CR>:echo f8msg<CR>gv
inoremap <silent> <F8> <C-O>:setlocal spell!<CR><C-O>:echo f8msg<CR>

" Toggle spell dictionary
nnoremap <silent> <S-F8> :call <SID>ToggleSpelllang()<CR>
vnoremap <silent> <S-F8> <Esc>:call <SID>ToggleSpelllang()<CR>gv
inoremap <silent> <S-F8> <C-O>:call <SID>ToggleSpelllang()<CR>

" Move to next misspelled word
nnoremap ç ]s

" Find the misspelled word before the cursor
nnoremap Ç [s

" Add word under the cursor as a good word
nnoremap <Leader>wa zg

" Mark the word under the cursor as wrong
nnoremap <Leader>wd zw

" Suggest correctly spelled words
nnoremap <Leader>ç z=

" Copy text into the clipboard
vnoremap <Leader>y "+y<Esc>

" Paste text from the clipboard
nnoremap <Leader>p "+p
inoremap <Leader>p <Esc>"+pa

" Quickly select the text pasted from the clipboard
nnoremap gV `[v`]

" Yank everything from the cursor to the EOL
nnoremap Y y$

" Retab the selected text
vnoremap <Leader>tf :retab!<CR>

" Isolate the current line
nnoremap <Leader>o m`o<Esc>kO<Esc>``

" Enter a new line Down from 'Normal Mode'
nnoremap <Leader>f mao<Esc>`a

" Enter a new line Up from 'Normal Mode'
nnoremap <Leader>F maO<Esc>`a

"----------------------------------------------------------------
" 15. Make settings
"----------------------------------------------------------------
" If QuickRun is installed, first it will use the plugin.
" If not, use 'makeprg'.

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

" Execute ':make' and show the result
nnoremap <silent> <Leader><TAB> :call MakeIt()<CR>
vnoremap <silent> <Leader><TAB> <Esc>:call MakeIt()<CR>gv
inoremap <silent> <Leader><TAB> <C-O>:call MakeIt()<CR>

"----------------------------------------------------------------
" 16. Filetype settings
"----------------------------------------------------------------
" Delete trailing white space on save
func! DeleteTrailing()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailing() " All files

" Binary
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif
augroup END

" Markdown
augroup markdown
	au!
	au FileType markdown setl spell
augroup end

" Mail
augroup mail
	au!
	au FileType mail setl spell
	au FileType mail setl spelllang=ca
augroup end

"----------------------------------------------------------------
" 17. Helper functions
"----------------------------------------------------------------
" Reload the current colorscheme
function! GetColorschemeName()
	try
		exec ':colorscheme ' . g:colors_name
	catch /^Vim:E121/
		exec ':colorscheme default'
	endtry
endfunction

" Show syntax highlighting groups
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
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

" Delete file
function! DeleteFile()
	if (&filetype == 'help')
		echo "It's a help buffer. Don't delete it."
	else
		call delete(expand('%')) | bdelete!
	endif
endfunction

" Don't close window when deleting a buffer
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

" Search into a Visual selection
function! RangeSearch(direction)
	call inputsave()
	let g:srchstr = input(a:direction)
	call inputrestore()
	if strlen(g:srchstr) > 0
		let g:srchstr = g:srchstr.
			\ '\%>'.(line("'<")-1).'l'.
			\ '\%<'.(line("'>")+1).'l'
	else
		let g:srchstr = ''
	endif
endfunction

" Highlight the selected text (visual mode)
" Source: https://github.com/nelstrom/vim-visual-star-search
" (You can install it as a plugin)
function! s:VSetSearch()
	let temp = @@
	norm! gvy
	let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
	let @@ = temp
endfunction

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

" Toggle spell dictionary
function! <SID>ToggleSpelllang()
	if (&spelllang =~ 'en')
		set spelllang=ca
		echo 'Català'
	elseif (&spelllang == 'ca')
		set spelllang=es
		echo 'Castellano'
	else
		set spelllang=en_us,en_gb
		echo 'English'
	endif
	set spelllang?
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

" Toggle the cursor position start/end
let s:togglecp = 0

function! s:ToggleCPosition()
	if col(".") >= col("$") - 1
		let s:togglecp = 1
		norm! ^
		echo "Start of the text: ^"
	else
		let s:togglecp = 0
		norm! g_
		echo "End of the text: $"
	endif
endfunction

" Replicated for the Visual mode
function! s:VToggleCPosition()
	normal! gv
	if col(".") >= col("$") - 1
		let s:togglecp = 1
		norm! ^
		echo "Start of the text: ^"
	else
		let s:togglecp = 0
		norm! g_
		echo "End of the text: g_"
	endif
endfunction

" Execute ':make' and show the result
function! MakeIt() abort
	try
		QuickRun
	catch
		update | make
	endtry
endfunction

" Toggle GitGutterPreviewHunk
function! s:ToggleGGPrev()
	if getwinvar(winnr("#"), "&pvw") == 1
		pclose
		echo "GitGutter closed."
	else
		GitGutterPreviewHunk
		if getwinvar(winnr("#"), "&pvw") == 0
			echo "Nothing to show."
		else
			echo "GitGutter preview."
		endif
	endif
endfunction

" Toggle GstatusPreview
function! s:ToggleGsPrev()
	if &pvw
		echo "Gstatus closed."
		pclose
	else
		echo "Gstatus preview."
		Gstatus
	endif
endfunction

" Better toggle for NERDTree
function! ToggleTree()
	if (exists ("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1))
		if &modifiable
			execute ":NERDTreeFocus"
		else
			execute ":NERDTreeClose"
		endif
	else
		execute ":NERDTreeFind"
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
