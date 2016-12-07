# Veni, vidi, Vim
Gerard's **Vim** & **Neovim** configuration.

This Vim configuration is purely subjective: I wrote it according to my needs. The goal of it is to feel comfort when programming.

## General settings:

- `<Leader>` key is ",". It's really a good practice.
- Then `<Leader><Leader>` escapes the current mode.
- Three cursor shapes for Normal, Insert and Replace modes.
- UTF8 is the default encoding for Vim and Neovim.
- 256 colors for Vim and True Color for Neovim.
- Backups and swap files are disabled. Use Git!
- Rename files with `<F2>` without leaving Vim.
- Toggle numbers and relative numbers with `<F3>/<S-F3>`
- Display or hide the TagBar list (plugin) with `<F4>`.
- Reload a buffer edited from outside with `<F5>`.
- Display or hide unprintable characters with `<F6>`.
- Toggle Paste mode to cut or copy in Vim with `<F7>`.
- Also, auto-toggle Paste mode when pasting text.
- Toggle spell and switch dictionaries with `<F8>/<S-F8>`.
- Navigate between misspelled words with `ç/Ç`.
- Display or hide the colorcolumn with `<F9>`.
- Maximize and resize a Vim window with `<F10>`.
- The key `<F11>` is reserved for some desktops.
- Reload the Vim/Neovim configuration with `<F12>`.
- Reload the current colorscheme with `<S-F12>`.
- Save a buffer or all buffers with `<Leader>s/S`.
- Delete the current file with `<Leader><Del>y`.
- Navigate between buffers with `<C-h>/<C-l>`.
- Navigate between Vim/Tmux panes with `<Alt-{hjkl}>`.
- Navigate between GitGutter hunks with `<Leader>j/k`.
- Preview or hide the GitGutter hunks with `<C-p>`.
- Open the git command `:Gstatus` with `<C-g>`.
- Search in the current buffer with `<Space>`.
- Highlight the current selection with `<Leader><CR>`.
- Highlight the word under the cursor with `<Leader><CR>`.
- Stop the highlighting with `<Leader><BS>`.
- Vimgrep the highlight (current buffer) with `<Leader>v`.
- Vimgrep the highlight (full project) with `<Leader>V`.
- Replace the highlight (current buffer) with `<Leader>r`.
- Replace the highlight (open buffers) with `<Leader>R`.
- Open a lot of files (:args command) with `<Leader>a/A`.
- Search, vimgrep and replace into the visual selection.
- Navigate between vimgrep results with `<Leader>n/N`.
- Open the menu of the plugin CtrlP with `<C-c>`.
- Into CtrlP, switch files/mru/buffers with `<C-h>/<C-l>`.
- Readline maps for Commands mode, Insert mode and CtrlP.
- Open the plugin FZF - all files with `<Leader>z`.
- Open the plugin FZF - commits with `<Leader>Z`.
- Copy/paste from the clipboard with `<Leader>y/p`.
- Select the text pasted from the clipboard with `gV`.
- Caps Lock is `<C-l>` from Insert mode (plugin).
- Indent lines and selection using `<Tab>`and `<S-Tab>`.
- Duplicate lines up and down with `<Leader>ds/df`.
- Move lines up and down (even selected) with `<C-j>/<C-k>`.
- Add new empty lines up and down with `<Leader>f/F`.
- Isolate the current line with `<Leader>o`.
- Tabularize a Visual selection with `<Leader>x/X`.
- Toggle the cursor position start/end of line with `ñ`.
- Rename the Tmux windows titles with the current buffer.
- Resize the Vim windows with `-`, `+`, `<` and `>`.
- Toggle case a letter or a selection with `<Leader><`.
- Test your code easily with `<Leader><Tab>`.
- Autocompletion: C/C++, Go, Python, JS, PHP, HTML, CSS.
- Show the syntax highlighting groups with `<C-s>`.
- Non intrusive configuration with the native keymaps.

Vim and Neovim configurations are identical excepting little details. For example: Vim uses the plugins Syntastic, QuickRun and Neocomplete, while Neovim uses Neomake and Deoplete. Neovim is faster with these plugins —asynchronous architecture wins—; and Vim 8.0 will be fast as well, when someone writes asynchronous plugins for it.

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

- Sessions:
  - [vim-session](https://github.com/xolox/vim-session)
  - [vim-misc](https://github.com/xolox/vim-misc)

- Tools:
  - [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
  - [nerdtree](https://github.com/scrooloose/nerdtree)
  - [syntastic](https://github.com/scrooloose/syntastic) (Vim)
  - [listtoggle](https://github.com/valloric/listtoggle)
  - [tagbar](https://github.com/majutsushi/tagbar)
  - [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
  - [fzf](https://github.com/junegunn/fzf)
  - [fzf.vim](https://github.com/junegunn/fzf.vim)
  - [gundo.vim](https://github.com/sjl/gundo.vim)

- Languages:
  - [vim-go](https://github.com/fatih/vim-go)
  - [css.vim](https://github.com/JulesWang/css.vim)
  - [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
  - [vim-jquery](https://github.com/itspriddle/vim-jquery)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [tern_for_vim](https://github.com/ternjs/tern_for_vim)
  - [a.vim](https://github.com/vim-scripts/a.vim)

- Autocomplete:
  - [supertab](https://github.com/ervandew/supertab)
  - [deoplete](https://github.com/Shougo/deoplete) (Neovim)
  - [neocomplete.vim](https://github.com/Shougo/neocomplete.vim) (Vim)
  - [deoplete-go](https://github.com/zchee/deoplete-go) (Neovim)
  - [gocode](https://github.com/nsf/gocode)
  - [deoplete-jedi](https://github.com/zchee/deoplete-jedi) (Neovim)
  - [jedi-vim](https://github.com/davidhalter/jedi-vim) (Vim)
  - [deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs) (Neovim)
  - [jspc.vim](https://github.com/othree/jspc.vim)
  - [html5.vim](https://github.com/othree/html5.vim)
  - [phpcomplete-extended](https://github.com/m2mdas/phpcomplete-extended)
  - [clang_complete](https://github.com/Rip-Rip/clang_complete)

- Snippets:
  - [neosnippet](https://github.com/Shougo/neosnippet)
  - [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
  - [context_filetype.vim](https://github.com/Shougo/context_filetype.vim)

- Run code:
  - [vim-quickrun](https://github.com/thinca/vim-quickrun) (Vim)
  - [neomake](https://github.com/neomake/neomake) (Neovim)
  - [vimproc.vim](https://github.com/Shougo/vimproc.vim)
  - [vimshell.vim](https://github.com/Shougo/vimshell.vim)

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
  - [webapi-vim](https://github.com/mattn/webapi-vim)
  - [emmet-vim](https://github.com/mattn/emmet-vim)

Read the [code](https://github.com/gerardbm/vimrc/blob/master/vimrc) directly to know more details.
