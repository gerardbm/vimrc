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
- Replace the highlight with `<Leader>r`.
- Argdo the highlight with `<Leader>do`.
- Toggle spell, dictionary, list and colorcolumn.
- Auto-toggle 'Paste Mode' when pasting text.
- Caps Lock is `<C-l>` from 'Insert Mode'.
- Indentation is using `<Tab>`and `<S-Tab>`.
- Duplicate lines, move them and add new ones.
- Non intrusive configuration with the native keymaps.
- Rename the Tmux windows titles with the current buffer.
- Move between Vim windows and Tmux panes with `<Alt-{hjkl}>`.

Vim and Neovim configurations are identical excepting little details. For example: Vim uses the plugins Syntastic, QuickRun and Neocomplete, while Neovim uses Neomake and Deoplete. Neovim is faster with these plugins —asynchronous architecture wins—; and Vim 8.0 will be fast as well, when someone writes asynchronous plugins for it.

Take a look at the following list explaining the main keymaps ordered by keys: Control, Alt, F1-F12, Leader and Windows.

#### \<C-{a-z}\> keymaps:

- Buffers:
  - `<C-h>` goes to the previous buffer.
  - `<C-l>` goes to the next buffer.

- Text edition:
  - `<C-j>` moves lines down.
  - `<C-k>` moves lines up.
  - `<C-a>` moves the cursor to the line start.
  - `<C-e>` moves the cursor to the line end.
  - `<C-b>` moves the cursor back one character.
  - `<C-f>` moves the cursor forward one character.

- Plugins related:
  - `<C-p>` previews the current GitGutter hunk.
  - `<C-n>` opens, focuses or closes NERDTree.
  - `<C-s>` expands neosnippet from 'Insert Mode'.
  - `<C-z>` goes to the `:VimShell`.
  - `<C-d>` expands Jedi completions.

- Misc:
  - `<C-s>` shows syntax highlighting groups.

#### \<A-{a-z}\> keymaps:

- Windows:
  - `<A-h>` goes to the window: left.
  - `<A-j>` goes to the window: down.
  - `<A-k>` goes to the window: up.
  - `<A-l>` goes to the window: right.

#### \<F{1..12}\> and \<S-F{1-12}\> keymaps:
- `<F1>` it's the default help.
- `<F2>` renames the current buffer.
- `<F3>` toggles line numbers.
- `<S-F3>` toggles relative numbers.
- `<F4>` toggles Tagbar (plugin).
- `<F5>` reloads all open buffers.
- `<F6>` toggles list.
- `<F7>` toggles 'Paste Mode'.
- `<F8>` toggles spell checking.
- `<S-F8>` toggles spell dictionaries.
- `<F9>` toggles colorcolumn.
- `<F10>` toggles maximize/minimize the current window.
- `<F11>` empty: desktops use it to toggle fullscreen.
- `<F12>` reloads your Vim/Neovim configuration.
- `<S-F12>` reloads the current colorscheme.

#### \<Leader\> keymaps:

- Buffers:
  - `<Leader>s` updates the buffer (saves if it has changes).
  - `<Leader>S` updates all the buffers.
  - `<Leader>bd` closes the current buffer.
  - `<Leader>ba` closes all the buffers.
  - `<Leader>bb` opens the `:edit` command.
  - `<Leader>bg` opens a list of all the buffers.
  - `<Leader><Del>y` deletes the current buffer. Careful!

- Filepath:
  - `<Leader>cd` switches CWD to the current filepath.
  - `<Leader>cf` copies the filepath to the clipboard.

- Tabs:
  - `<Leader>td` closes the current tab.
  - `<Leader>to` closes all the tabs except the current.
  - `<Leader>tt` opens the `:tabedit` command.
  - `<Leader>tr` moves the tab position to the left.
  - `<Leader>ty` moves the tab position to the right.

- Windows:
  - `<Leader>.` it is `wincmd` to easily manage windows.
  - `<Leader>.-` splits window horizontally.
  - `<Leader>..` splits window vertically.
  - `<Leader>.<CR>` closes the current window.
  - `<Leader>.x` closes the current window forcing it.
  - `<Leader>.,` restores the proportional size of windows.
  - `<Leader>.l` returns to the last window.
  - `<Leader>.p` goes to the previous window.
  - `<Leader>.n` goes to the next window.
  - `<Leader>.o` closes all windows excepting the current.

- About lines:
  - `<Leader>m` removes the Windows ^M.
  - `<Leader>ds` duplicates a line up.
  - `<Leader>df` duplicates a line down.
  - `<Leader>o` isolates the current line.
  - `<Leader>f` enters a new line down from 'Normal Mode'.
  - `<Leader>F` enters a new line up from 'Normal Mode'.

- Search:
  - `<Leader><CR>` searches the word under the cursor.
  - `<Leader><CR>` also, searches the current selection!
  - `<Leader><BS>` disables highlight.

- Vimgrep:
  - `<Leader>v` vimgreps the highlight in the current file.
  - `<Leader>V` vimgreps the highlight in the current directory.
  - `<Leader>n` goes to the next vimgrep result.
  - `<Leader>N` goes to the previous vimgrep result.

- Replace:
  - `<Leader>r` replaces the current highlight.
  - `<Leader>a` opens all the files of the current directory.
  - `<Leader>A` opens all the files of the subdirectories, as well.
  - `<Leader>da` replaces the highlight to all the buffers.

- Text edition:
  - `<Leader>u` toggles the case of a character.
  - `<Leader>u` toggles the case of a selection, as well.
  - `<Leader>wn` moves to the next misspelled word.
  - `<Leader>wp` moves to the previous misspelled word.
  - `<Leader>wa` adds the word under the cursor into the dictionary.
  - `<Leader>wx` marks the word under the cursor as wrong.
  - `<Leader>w?` suggests correctly spelled words.
  - `<Leader>tf` retabs the current selection.

- Clipboard:
  - `<Leader>y` copies text into the clipboard.
  - `<Leader>p` pastes text from the clipboard.

- Plugins related:
  - `<Leader><TAB>` runs the code of the current buffer.
  - `<Leader>j` goes to the next GitGutter hunk.
  - `<Leader>k` goes to the previous GitGutter hunk.
  - `<Leader>x` toggles the commented code..
  - `<Leader>h` goes to the previous warning/error.
  - `<Leader>l` goes to the next warning/error.
  - `<Leader>q` toggles the quickfix window.
  - `<Leader>e` toggles the location list window.
  - `<Leader>z` toggles the plugin FZF.
  - `<Leader>gu` toggles the plugin Gundo.
  - `<Leader>ga` inits easy align plugin.
  - `<Leader>ta` inits tabularize plugin.
  - `<Leader>t1` inits tabularize plugin (only the first match).
  - `<Leader>W` inits ArgWrap plugin.
  - `<Leader>M` inits Markdown preview plugin.

#### \<Win-{a-z}\> keymaps:

- 'Insert Mode' and 'Command Mode':
  - `<Win-h>` moves the cursor back one character.
  - `<Win-j>` moves the cursor down one line.
  - `<Win-k>` moves the cursor up one line.
  - `<Win-l>` moves the cursor forward one character.

It's a generic explanation of the main commands. Some are only for a specific mode and most of them are usable from all the modes, so if you need more precise information, check the code.

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
  - [syntastic](https://github.com/scrooloose/syntastic) (only Vim)
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
  - [neocomplete.vim](https://github.com/Shougo/neocomplete.vim) (only Vim)
  - [deoplete](https://github.com/Shougo/deoplete) (only Neovim)
  - [phpcomplete.vim](https://github.com/shawncplus/phpcomplete.vim)
  - [vim-clang](https://github.com/justmao945/vim-clang)
  - [jedi-vim](https://github.com/davidhalter/jedi-vim) (only Vim)
  - [deoplete-jedi](https://github.com/zchee/deoplete-jedi) (only Neovim)
  - [supertab](https://github.com/ervandew/supertab)

- Snippets:
  - [neosnippet](https://github.com/Shougo/neosnippet)
  - [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets)
  - [context_filetype.vim](https://github.com/Shougo/context_filetype.vim)

- Run code:
  - [vim-quickrun](https://github.com/thinca/vim-quickrun) (only Vim)
  - [neomake](https://github.com/neomake/neomake) (only Neovim)
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

## Changelog

= 1.4.1 =
* The maps `<Leader>g` (`:GundoToggle`) changed to `<Leader>gu`.
* Better Neocomplete/Deoplete settings.
* Deleted the inoremap `<C-D>` to delete a line.
* Added the inoremap `<C-D>` to expand Jedi completions.
* Fixed the imap `<C-L>` (Caps Lock) to prevents popup completions.
* Better cursor shape detection for older Vim versions.
* New maps to switch between Vim and Tmux windows even from the Insert/Visual Modes.
* Now easily navigate between characters from Insert Mode with Windows key + hjkl.
* Added the cnoremaps `^X@sh` and `^X@sl` to move one character left and right.
* The nnoremap `<Leader>da` (`:argdo`) changed to `<Leader>**do**`.
* The nnoremap `<Leader>F` now it enters a new line Up.

= 1.4.0 =
* Added a new section: 'Filetype settings'.
* More time delay for `timeoutlen` (3000).
* New inoremap to insert a colon and return to Normal Mode.
* Trigger `InsertLeave` autocmd when using `<C-C>` to escape.
* Echo a warning when pressing `<C-C>` in Normal Mode.
* Disabled Q Mode.
* New cnoreabbrev to open help in a vertical window.
* Installed the plugin 'fzf'.
* Installed the plugin 'tern_for_vim'.
* Installed the plugin 'vim-closetag'.
* Installed the plugin 'targets.vim'.
* Installed the plugin 'vim-sort-motion'.
* Installed the plugin 'vim-expand-region'.
* Installed the plugin 'MatchTagAlways'.
* Installed the plugin 'vim-argwrap'.
* Installed the plugin 'vim-characterize'.
* GitGutter will ignore space at EOL.
* The map `<C-P>` (open CtrlP plugin) changed to `<Leader><Space>`.
* Added the nmap `<C-P>` to toggle preview GitGutter hunks.
* All maps `<C-C>` (toggle comment) changed to `<Leader>x`.
* Added new maps `<Leader>h` to jump to the previous error.
* Added new maps `<Leader>l` to jump to the next error.
* Added new maps `<Leader>z` to open FZF plugin.
* All maps `<C-T>` (toggle Tagbar) changed to `<F4>`.
* All maps `<C-N>` (expand neosnippet) changed to `<C-S>`.
* Added the nnoremap `<C-Z>` to open `:VimShell` or `:terminal`.
* The plugin 'easy-align' now uses the map `<Leader>ga`.
* The plugin 'tabularize' now uses the map `<Leader>t1`.
* The plugin 'expand-region' uses the vmap `v` and `<C-V>`.
* Added settings for the plugin 'MatchTagAlways'.
* Added settings for the plugin 'ArgWrap' and `<Leader>W`.
* The plugin 'vim-instant-markdown' now uses the map `<Leader>M`.
* Added new settings to change the cursor shape.
* To reload the `colorscheme` now it is mapped to `<S-F12>`
* The nnoremap `<C-Z>` (show syntax) changed to `<C-S>`.
* Added the onoremap `af` and `aF` to work on all file.
* Added the nnoremap `<Leader>cf` to copy the filepath to clipboard.
* Added the cnoremap `%%` to expand the path of the current buffer.
* All maps `<F4>` (toggle relative numbers) changed to `<S-F3>`.
* Removed maps to treat long lines as break lines using arrows.
* Removed maps to move lines using arrows.
* Removed maps to duplicate a line using arrows.
* Added four 'Readline commands': `<C-A>`, `<C-E>`, `<C-B>`, `<C-F>`.
* The nnoremap `<Leader><Space>` (`:vimgrep`) changed to `<Leader>v`.
* The vnoremap `<Leader><Space>` (`:vimgrep`) changed to `<Leader>v`.
* The nnoremap `<Leader>v` (`:vimgrep`) changed to `<Leader>V`.
* The nnoremap `<Leader>l` (`:cnext`) changed to `<Leader>n`.
* The nnoremap `<Leader>h` (`:cprev`) changed to `<Leader>N`.
* The nnoremap `<Leader>aa` (`:args *.`) changed to `<Leader>a`.
* The nnoremap `<Leader>as` (`:args **/*.`) changed to `<Leader>A`.
* The nnoremap `<Leader>ad` (`:argdo %s...`) changed to `<Leader>da`.
* The vnoremap `<Leader>x` (toggle case) changed to `<Leader>u`.
* Added the nnoremap `<Leader>u` to toggle case: easier than `~`.
* Added the inoremap `<Leader>u` to toggle case from Insert Mode.
* Added maps to toggle spell dictionary using `<S-F8>`.
* Added the inoremap `<Leader>p` to paste the clipboard from Insert Mode.
* Added the nnoremap `Y` to yank everything from the cursor to the EOL.
* Added the inoremap `<C-D>` to delete de current line from Insert Mode.
* Added the nnoremap `<Leader>o` to isolate the current line.
* Added the nnoremap `<Leader>f` to add a new line below.
* Added the nnoremap `<Leader>F` to join lines.
* Added 'binary' filetype settings.
* Added 'markdown' filetype settings.
* Added 'mail' filetype settings.

= 1.3.0 =
* Installed the plugin 'vim-capslock': use `<C-L>` (Insert Mode) instead of Caps Lock key.
* Removed the nnoremap `<Leader>e` (replace the word under the cursor). Use `ciw` instead.
* The nnoremap `<Leader>h` (`:GitGutterPreviewHunk`) changed to `<Leader>f`.
* The nnoremap `<Leader>l` (toggle the 'loclist') changed to `<Leader>e`.
* The nnoremap `<Leader>p` (`:cprev`) changed to `<Leader>h`.
* The nnoremap `<Leader>n` (`:cnext`) changed to `<Leader>l`.
* Added the nnoremap `<Leader>p` to paste from the clipboard.
* The nnoremap `<Leader>y` changed to `<Leader>ya` (**y**ank **a**ll).

= 1.2.0 =
* Installed the plugin 'vim-instant-markdown'
* Added a map to preview markdown files using `<Leader>z`.
* The vnoremap `<Leader>z` (sorting lines) changed to `<Leader>az`.
* Installed the plugin 'open-browser'.
* Installed the plugin 'MatchTagAlways'.
* Installed the plugin 'Emmet'.

= 1.1.2 =
* Fixed `xterm-keys` for tmux.
* Improved conditional to enable 256 colors, matching to a `$TERM` pattern.
* Turn `viminfo^=%` to comment (don't remember the last open buffer on close).
* Better maps for splitting and resizing windows, so it fits in my `.tmux.conf`.
* Stop resizing all windows when the terminal is resized. Makes no sense.
* Removed the nnoremap `<BS>` (delete the last character).

= 1.1.1 =
* Fixed the map for reloading settings `.vimrc`. Now it uses `$MYVIMRC` var.
* Fixed `DeleteTrailing`, so it works in all files (`*`).
* The nnoremap `<CR>` (search the word under the cursor) changed to `<Leader><CR>`.
* The vnoremap `<CR>` (search the visual selection) changed to `<Leader><CR>`.
* The nnoremap `<Leader><CR>` (disable highlight) changed to `<Leader><BS>`.
* The inoremap `<C-C>` (toggle NERDCommenter) have been deleted.
* The nnoremap `<NUL>` (toggle 'NERDTree') changed to `<C-N>`.
* Jump to the end of line in Insert Mode using `<C-E>`.

= 1.1.0 =
* Installed a pluggin for a smoother scrolling.
* Changed `scrolloff` to 0.
* Set `mousehide` (always, in term and GUI).
* Added a map to reload the current colorscheme.
* Added a map to display syntax highlighting groups.
* Added a map for `:retab` (Visual Mode).
* Added a map to jump to the end of line in the Insert Mode.
* Added ignore case when autocompletes when browsing files.
* Added maps for 'gitgutter' hunks: next, prev and preview.
* Added a map to delete the current file: `<Leader><Del>y`.
* Added a map to reload the current colorscheme: `<Leader><F5>`.
* Removed conditional statement on 'tabularize' settings.
* Rename the title of tmux tabs with the current filename.
* New `showbreak` characters: `│——»`. (4 characters).
* Search the word under cursor without jumping to the next result.
* Search the selected text without jumping to the next result.
* Disabled 'Fly Mode' from plugin 'auto-pairs'.
* Vim-airline's tabline show only the filename instead of path.
* Installed plugins for autocomplete and snippets.
* Added a new category for `:make` settings.
* Installed the plugin 'QuickRun'.
* Set `updatetime` to 250.

= 1.0.0 =
* Initial commit, first version.
