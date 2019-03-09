# Vim configuration
Gerard's **Vim** & **Neovim** configuration.

This Vim configuration is purely subjective. The goal of it is to get comfortable while programming.

## General settings:

The `<Leader>` key is ",": it's enabled only in 'Normal mode' to avoid the delay time when typing it from 'Insert mode'. The map `<C-c>` is used as `<Escape>` from any mode. Three cursor shapes (block, vertical and horizontal) are defined for Vim and Neovim for the terminals URxvt and XTerm (even into tmux); it also works in the last versions of gnome-terminal, terminator, termite and st. Default encoding is UTF-8. Color support: 256 colors for Vim and Neovim.

Navigate easily between buffers, tabs, windows and tmux panes. Navigate between syntax warnings/errors, between misspelled words, between searches, between vimgrep and grep results, between GitGutter hunks and between git history (using fugitive plugin).

Easily highlight the word under the cursor or the current selection. A lot of commands have been defined to work with the highlighted text: vimgrep, grep, (current buffer, arglist, buffers loaded or current working directory) and replace. Also, you can search and replace into the visual selection only.

Some useful tools have been integrated. Plugins: **CtrlP** (navigate between open buffers, MRU or directory files), **NERDTree** (tree files), **vim-fugitive** (git commands), **GV** (navigate between git commits), **undotree** (history visualizer), **ALE** (async syntax linter, it works while you type), **deoplete** (autocompletion for Vim and Neovim), **neosnippet** (code snippets), **QuickRun** (it's awesome at running code), **Vimwiki** (organize notes, manage todo-lists...), and much more.

Additionally, run scripting code (Bash, Perl, Ruby, Python and JavaScript) into a separate tmux window, execute SQL queries from sqlite databases using the plugin **vim-dadbod**, convert UML files into PNG using *plantUML*, generate PDF, EPUB and HTML files from markdown with math support (LaTeX) and preview them with *MuPDF*, do symbolic math operations into a markdown file using *maxima* and open URLS into a tmux window with *w3m*.

This configuration is focused on programming in C/C++, Go, Rust, Perl, Python, Ruby, PHP, Bash, JavaScript and web development in general, with HTML5 and CSS3.

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

- Specific for Vim and Deoplete:
  - [nvim-yarp](https://github.com/roxma/nvim-yarp)
  - [vim-hug-neovim-rpc](https://github.com/roxma/vim-hug-neovim-rpc)

- Autocomplete:
  - [deoplete](https://github.com/Shougo/deoplete)
  - [neosnippet.vim](https://github.com/Shougo/neosnippet.vim)
  - [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
  - [context_filetype.vim](https://github.com/Shougo/context_filetype.vim)
  - [supertab](https://github.com/ervandew/supertab)

- C/C++ support
  - [clang_complete](https://github.com/Rip-Rip/clang_complete)

- Go support
  - [vim-go](https://github.com/fatih/vim-go)
  - [gocode](https://github.com/nsf/gocode)
  - [deoplete-go](https://github.com/zchee/deoplete-go)

- Perl support
  - [perlomni.vim](https://github.com/c9s/perlomni.vim)

- Python support
  - [deoplete-jedi](https://github.com/zchee/deoplete-jedi)

- Ruby support
  - [vim-ruby](https://github.com/vim-ruby/vim-ruby)
  - [vim-rails](https://github.com/tpope/vim-rails)
  - [vim-endwise](https://github.com/tpope/vim-endwise)

- PHP support
  - [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)

- Haskell support
  - [neco-ghc](https://github.com/eagletmt/neco-ghc)

- Rust support
  - [vim-racer](https://github.com/racer-rust/vim-racer)

- Zsh support
  - [deoplete-zsh](https://github.com/zchee/deoplete-zsh)

- JavaScript support
  - [tern_for_vim](https://github.com/ternjs/tern_for_vim)
  - [deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs)
  - [jspc.vim](https://github.com/othree/jspc.vim)
  - [vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify)

- CSS support
  - [css.vim](https://github.com/JulesWang/css.vim)
  - [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)

- HTML support
  - [html5.vim](https://github.com/othree/html5.vim)

- VimL support
  - [neco-vim](https://github.com/Shougo/neco-vim)

- Syntax files support:
  - [neco-syntax](https://github.com/Shougo/neco-syntax)

- Run code:
  - [vim-quickrun](https://github.com/thinca/vim-quickrun)
  - [vimproc.vim](https://github.com/Shougo/vimproc.vim)
  - [vim-dadbod](https://github.com/tpope/vim-dadbod)

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
  - [vim-characterize](https://github.com/tpope/vim-characterize)
  - [open-browser.vim](https://github.com/tyru/open-browser.vim)
  - [vim-notebook](https://github.com/baruchel/vim-notebook)
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
  - [goyo.vim](https://github.com/junegunn/goyo.vim)
  - [webapi-vim](https://github.com/mattn/webapi-vim)
  - [emmet-vim](https://github.com/mattn/emmet-vim)
  - [vimwiki](https://github.com/vimwiki/vimwiki)

- Color schemes:
  - [vim-atomic](https://github.com/gerardbm/vim-atomic)

Read the [code](https://github.com/gerardbm/vimrc/blob/master/vim/.vimrc) directly to know more details.

## Screenshot

![Screenshot](https://raw.githubusercontent.com/gerardbm/vimrc/master/img/vimrc.png)
