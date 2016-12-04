# Veni, vidi, Vim
Gerard's **Vim** & **Neovim** configuration.

This Vim configuration is purely subjective: I wrote it according to my needs. The goal of it is to feel comfort when programming.

## General settings:

- `<Leader>` key is ",". It's really a good practice.
- Then `<Leader><Leader>` escapes the current mode.
- Three cursor shapes for Normal, Insert and Replace modes.
- In Vim encoding is set to UTF8. In Neovim it is a default.
- 256 colors for Vim and True Color for Neovim.
- Backups and swap files are disabled. Use Git!
- Relative numbers are enabled. Toggle it with `<F3>`.
- Rename and delete files. Reload and save all files.
- Navigate between buffers, tabs and windows easily.
- Do a search in the current buffer with `<Space>`.
- Highlight the selection with `<Leader><CR>`.
- Vimgrep the highlight with `<Leader>v`.
- Vimgrep to all files with `<Leader>V`.
- Replace the highlight with `<Leader>r`.
- Replace to all open files with `<Leader>R`.
- Toggle spell, dictionary, list and colorcolumn.
- Auto-toggle 'Paste Mode' when pasting text.
- Caps Lock is `<C-l>` from 'Insert Mode'.
- Indentation is using `<Tab>`and `<S-Tab>`.
- Duplicate lines, move them and add new ones.
- Non intrusive configuration with the native keymaps.
- Rename the Tmux windows titles with the current buffer.
- Move between Vim windows and Tmux panes with `<Alt-{hjkl}>`.

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
  - [html5.vim](https://github.com/othree/html5.vim)
  - [css.vim](https://github.com/JulesWang/css.vim)
  - [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
  - [vim-jquery](https://github.com/itspriddle/vim-jquery)
  - [vim-javascript](https://github.com/pangloss/vim-javascript)
  - [tern_for_vim](https://github.com/ternjs/tern_for_vim)
  - [a.vim](https://github.com/vim-scripts/a.vim)

- Autocomplete:
  - [neocomplete.vim](https://github.com/Shougo/neocomplete.vim) (Vim)
  - [deoplete](https://github.com/Shougo/deoplete) (Neovim)
  - [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)
  - [vim-clang](https://github.com/justmao945/vim-clang)
  - [jedi-vim](https://github.com/davidhalter/jedi-vim) (Vim)
  - [deoplete-jedi](https://github.com/zchee/deoplete-jedi) (Neovim)
  - [supertab](https://github.com/ervandew/supertab)

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
  - [vim-surround](https://github.com/tpope/vim-surround)
  - [vim-repeat](https://github.com/tpope/vim-repeat)
  - [vim-capslock](https://github.com/tpope/vim-capslock)
  - [vim-closetag](https://github.com/alvan/vim-closetag)
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
