# Vim configuration
Gerard's **Vim** & **Neovim** configuration.

This Vim configuration is purely subjective: I wrote it according to my needs. The goal of it is to feel comfort when programming.

## General settings:

The `<Leader>` key is ",": it's enabled only in 'Normal mode' to avoid the delay time when typing it from 'Insert mode'. The map `<C-c>` is used as `<Escape>` from any mode. Three cursor shapes (block, vertical and horizontal) are defined for Vim and Neovim for the terminals URxvt and XTerm (even into tmux); it also works in the last versions of gnome-terminal, terminator, termite and st. Default encoding is UTF-8. Color support: 256 colors for Vim and Neovim.

Navigate easily between buffers, tabs, windows and tmux panes. Navigate between syntax warnings/errors, between misspelled words, between searches, between vimgrep results, between GitGutter hunks and between git history (using fugitive plugin).

Easily highlight the word under the cursor or the current selection. A lot of commands have been defined to work with the highlighted text: vimgrep it (current buffer or full project directory) and replace it (current buffer or all open buffers). Also, search, vimgrep and replace into the visual selection only.

Some useful tools have been integrated, like the plugins **CtrlP** (navigate between open buffers, MRU or directory files), **NERDTree** (tree files), **vim-fugitive** (a lot of interesting git commands), **GV** (navigate between commits), **undotree** (history visualizer), **ALE** (async syntax linter, and it works while you type), **neocomplete** and **deoplete** (autocompletion for Vim and Neovim), **neosnippet** (code snippets), **QuickRun** (it's awesome at running code), and much more.

This configuration is focused on programming in C, Go, Python, Perl, Ruby, Bash, JavaScript and web development in general, with HTML5 and CSS3.

**More specific information:**
- [Keymaps](https://github.com/gerardbm/vimrc/blob/master/KEYMAPS.md)
- [Changelog](https://github.com/gerardbm/vimrc/blob/master/CHANGELOG.md)

## List of plugins:
- Statusbar:
  - [vim-airline](https://github.com/vim-airline/vim-airline)
  - [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

- Git tools:
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [gv.vim](https://github.com/junegunn/gv.vim)

- Sessions:
  - [vim-session](https://github.com/xolox/vim-session)
  - [vim-misc](https://github.com/xolox/vim-misc)

- Tools:
  - [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
  - [nerdtree](https://github.com/scrooloose/nerdtree)
  - [listtoggle](https://github.com/valloric/listtoggle)
  - [tagbar](https://github.com/majutsushi/tagbar)
  - [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
  - [undotree](https://github.com/mbbill/undotree)
  - [ale](https://github.com/w0rp/ale)

- Languages:
  - [vim-go](https://github.com/fatih/vim-go)
  - [css.vim](https://github.com/JulesWang/css.vim)
  - [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
  - [vim-jquery](https://github.com/itspriddle/vim-jquery)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [tern_for_vim](https://github.com/ternjs/tern_for_vim)
  - [neco-syntax](https://github.com/Shougo/neco-syntax)
  - [vim-ruby](https://github.com/vim-ruby/vim-ruby)

- Autocomplete:
  - [supertab](https://github.com/ervandew/supertab)
  - [deoplete](https://github.com/Shougo/deoplete) (Neovim)
  - [neopairs.vim](https://github.com/Shougo/neopairs.vim)
  - [neocomplete.vim](https://github.com/Shougo/neocomplete.vim) (Vim)
  - [deoplete-go](https://github.com/zchee/deoplete-go) (Neovim)
  - [gocode](https://github.com/nsf/gocode)
  - [deoplete-jedi](https://github.com/zchee/deoplete-jedi) (Neovim)
  - [jedi-vim](https://github.com/davidhalter/jedi-vim) (Vim)
  - [jspc.vim](https://github.com/othree/jspc.vim)
  - [html5.vim](https://github.com/othree/html5.vim)
  - [phpcomplete-extended](https://github.com/m2mdas/phpcomplete-extended)
  - [clang_complete](https://github.com/Rip-Rip/clang_complete)
  - [neco-vim](https://github.com/Shougo/neco-vim)

- Snippets:
  - [neosnippet](https://github.com/Shougo/neosnippet)
  - [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
  - [context_filetype.vim](https://github.com/Shougo/context_filetype.vim)

- Run code:
  - [vim-quickrun](https://github.com/thinca/vim-quickrun)
  - [vimshell.vim](https://github.com/Shougo/vimshell.vim) (Vim)
  - [vimproc.vim](https://github.com/Shougo/vimproc.vim)

- Edition:
  - [vim-easy-align](https://github.com/junegunn/vim-easy-align)
  - [tabular](https://github.com/godlygeek/tabular)
  - [auto-pairs](https://github.com/jiangmiao/auto-pairs)
  - [vim-closetag](https://github.com/alvan/vim-closetag)
  - [vim-surround](https://github.com/tpope/vim-surround)
  - [vim-repeat](https://github.com/tpope/vim-repeat)
  - [vim-capslock](https://github.com/tpope/vim-capslock)
  - [targets.vim](https://github.com/wellle/targets.vim)
  - [vim-sort-motion](https://github.com/christoomey/vim-sort-motion)
  - [vim-expand-region](https://github.com/terryma/vim-expand-region)
  - [MatchTagAlways](https://github.com/Valloric/MatchTagAlways)
  - [vim-argwrap](https://github.com/FooSoft/vim-argwrap)

- Misc:
  - [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
  - [sexy_scroller.vim](https://github.com/joeytwiddle/sexy_scroller.vim)
  - [vim-instant-markdown](https://github.com/suan/vim-instant-markdown)
  - [vim-characterize](https://github.com/tpope/vim-characterize)
  - [open-browser.vim](https://github.com/tyru/open-browser.vim)
  - [goyo.vim](https://github.com/junegunn/goyo.vim)
  - [webapi-vim](https://github.com/mattn/webapi-vim)
  - [emmet-vim](https://github.com/mattn/emmet-vim)

Read the [code](https://github.com/gerardbm/vimrc/blob/master/vimrc) directly to know more details.

## Screenshot

![Screenshot](https://raw.githubusercontent.com/gerardbm/vimrc/master/img/vimrc.png)
