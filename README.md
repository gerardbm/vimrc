# Vim configuration
Gerard's **Vim** & **Neovim** configuration.

This Vim configuration is purely subjective. The goal of it is to get comfortable while programming.

## General settings:

The `<Leader>` key is ",": it's enabled only in 'Normal mode' to avoid the delay time when typing it from 'Insert mode'. The map `<C-c>` is used as `<Escape>` from any mode. Three cursor shapes (block, vertical and horizontal) are defined for Vim and Neovim for the terminals URxvt and XTerm (even into tmux); it also works in the last versions of gnome-terminal, terminator, termite and st. Default encoding is UTF-8. Color support: 256 colors for Vim and Neovim.

Navigate easily: between buffers, tabs, windows and tmux panes; between syntax warnings and errors (it populates location-list); between misspelled words, where you can cycle between Catalan, English and Spanish dictionaries; between highlighted search results, where you can grep the highlight in the current buffer, all files from the current directory and subdirectories, the arglist and even between the old git commits, or use the internal vimgrep (grep and vimgrep populate the Quickfix and display the total matches); between GitGutter hunks; between git history (using the plugins vim-fugitive and GV); between tags of source code files with tagbar.

Easily highlight the word under the cursor or the current selection. A lot of commands have been defined to work with the highlighted text: the mentioned grep and vimgrep, and replace. Also, you can search and replace into the visual selection only.

Some useful tools have been integrated. Plugins: **CtrlP** (navigate between open buffers, MRU or directory files), **NERDTree** (tree files with filesystem operations), **FZF** for faster searches with previews, **vim-fugitive** (git commands), **GV** (navigate between git commits), **undotree** (history visualizer), **ALE** (async syntax linter), **deoplete** (autocompletion for Vim and Neovim), **neosnippet** (code snippets), **Vimwiki** (organize notes, manage todo-lists...) and manage sessions with **vim-session**.

Additionally, run scripting code (Bash, Perl, Ruby, Python, Lua, PHP and JavaScript) into a separate **tmux** window or simply preview the output in the preview window, where you can also preview SQL queries from **Sqlite** databases and **Maxima** operations (symbolic maths) from a MAX file. Preview the output of any shell command using the command `:Commander`.

Instant preview with MuPDF (PNG, HTML and EPUB) and Zathura (PDF) after making the following conversions:

- MD to PDF, EPUB and HTML using pandoc, with math support.
- TEX to PDF using pdflatex.
- UML to PNG using PlantUML (UML diagrams).
- DOT to PNG using Graphviz (graph drawing tools).
- EUK to PNG using Eukleides and Convert (elementary plane geometry).
- ASY to PNG using Asymptote and Convert (vector graphics language).
- PP3 to PNG using pp3 (Sky charts) and Convert (vector graphics language).
- PLT to PNG using Gnuplot (2D and 3D graphics).
- POV to PNG using POV-Ray (3D ray tracer).

This configuration is focused on programming in C/C++, Go, Rust, Haskell, Perl, Python, Ruby, PHP, Bash, JavaScript, Liquid (Jekyll) and web development in general, with HTML5 and CSS3. It's also a good configuration to write technical and academic papers with LaTeX and markdown.

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
  - [fzf](https://github.com/junegunn/fzf.vim)

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
  - [deoplete-clang](https://github.com/deoplete-plugins/deoplete-clang)

- Go support
  - [vim-go](https://github.com/fatih/vim-go)
  - [gocode](https://github.com/nsf/gocode)
  - [deoplete-go](https://github.com/zchee/deoplete-go)

- Perl support
  - [perlomni.vim](https://github.com/c9s/perlomni.vim)

- Python support
  - [deoplete-jedi](https://github.com/deoplete-plugins/deoplete-jedi)

- Ruby support
  - [vim-ruby](https://github.com/vim-ruby/vim-ruby)
  - [vim-rails](https://github.com/tpope/vim-rails)
  - [vim-endwise](https://github.com/tpope/vim-endwise)
  - [vim-liquid](https://github.com/tpope/vim-liquid)

- PHP support
  - [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)

- Haskell support
  - [neco-ghc](https://github.com/eagletmt/neco-ghc)

- Rust support
  - [vim-racer](https://github.com/racer-rust/vim-racer)

- Zsh support
  - [deoplete-zsh](https://github.com/deoplete-plugins/deoplete-zsh)

- JavaScript support
  - [tern_for_vim](https://github.com/ternjs/tern_for_vim)
  - [deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs)
  - [jspc.vim](https://github.com/othree/jspc.vim)
  - [vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify)

  - VimL support
  - [neco-vim](https://github.com/Shougo/neco-vim)

- Additional syntax files:
  - [html5.vim](https://github.com/othree/html5.vim)
  - [css-syntax.vim](https://github.com/vim-language-dept/css-syntax.vim)
  - [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [neco-syntax](https://github.com/Shougo/neco-syntax)
  - [i3config.vim](https://github.com/mboughaba/i3config.vim)
  - [plantuml-syntax](https://github.com/aklt/plantuml-syntax)
  - [asy.vim](https://github.com/gerardbm/asy.vim)
  - [eukleides.vim](https://github.com/gerardbm/eukleides.vim)
  - [vim-rec](https://github.com/zaid/vim-rec)
  - [vim-openscad](https://github.com/sirtaj/vim-openscad)

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
  - [vim-md-headings](https://github.com/gerardbm/vim-md-headings)
  - [vim-md-checkbox](https://github.com/gerardbm/vim-md-checkbox)
  - [vim-move](https://github.com/gerardbm/vim-move)

- Misc:
  - [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
  - [vim-characterize](https://github.com/tpope/vim-characterize)
  - [open-browser.vim](https://github.com/tyru/open-browser.vim)
  - [goyo.vim](https://github.com/junegunn/goyo.vim)
  - [webapi-vim](https://github.com/mattn/webapi-vim)
  - [emmet-vim](https://github.com/mattn/emmet-vim)
  - [vimwiki](https://github.com/vimwiki/vimwiki)

- Color schemes:
  - [vim-atomic](https://github.com/gerardbm/vim-atomic)

Read the [code](https://github.com/gerardbm/vimrc/blob/master/vim/.vimrc) directly to know more details.

## Screenshot

![Screenshot](https://raw.githubusercontent.com/gerardbm/vimrc/master/img/vimrc.png)
