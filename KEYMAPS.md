#### \<C-{a-z}\> keymaps:

- Buffers:
  - `<C-h>` goes to the previous buffer.
  - `<C-l>` goes to the next buffer.
  - `<C-t>` toggles the `:terminal` (Neovim).

- Text edition:
  - `<C-j>` moves lines down.
  - `<C-k>` moves lines up.

- 'Insert Mode' and 'Command Mode' (readline):
  - `<C-a>` moves the cursor to the line start.
  - `<C-e>` moves the cursor to the line end.
  - `<C-b>` moves the cursor back one character.
  - `<C-f>` moves the cursor forward one character.
  - `<C-s>` removes the last character.
  - `<C-d>` removes the current character.
  - `<C-z>` pastes the yanked text in command line.

- Plugins related:
  - `<C-t>` opens the `:VimShell` (Vim).
  - `<C-g>` previews the current GitGutter hunk.
  - `<C-n>` opens, focuses or closes NERDTree.
  - `<C-p>` opens the CtrlP menu buffers.
    - `<C-p>` navigates history: previous (into CtrlP).
    - `<C-n>` navigates history: next (into CtrlP).
    - `<C-h>` toggles type (into CtrlP).
    - `<C-l>` toggles type (into CtrlP).
    - `<C-b>` moves cursor to the left (into CtrlP).
    - `<C-f>` moves cursor to the right (into CtrlP).
    - `<C-s>` removes the last character.
    - `<C-d>` removes the current character.
    - `<C-g>` runs the `ToggleByFname` function.
  - `<C-s>` display a list of sessions to open.
  - `<C-l>` toggles caps lock from 'Insert Mode'.
  - `<C-q>` expands neosnippet from 'Insert Mode'.
  - `<C-z>` opens a list of the last commits (GV)'.

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
  - `<Leader>bw` switches CWD to the current filepath.
  - `<Leader>by` copies the filepath to the clipboard.

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
  - `<Leader><BS>` removes the Windows ^M.
  - `<Leader>ds` duplicates a line up.
  - `<Leader>df` duplicates a line down.
  - `<Leader>o` isolates the current line.
  - `<Leader>f` enters a new line down from 'Normal Mode'.
  - `<Leader>F` enters a new line up from 'Normal Mode'.

- Search:
  - `<Space>` searches forward for the pattern.
  - `<Leader><Space>` searches backward for the pattern.
  - `<Leader><CR>` searches the word under the cursor.
  - `<Leader><CR>` also, searches the current selection!
  - `<Leader>m` disables highlight.

- Vimgrep:
  - `<Leader>v` vimgreps the highlight in the current file.
  - `<Leader>V` vimgreps the highlight in the current directory.
  - `<Leader>n` goes to the next vimgrep result.
  - `<Leader>N` goes to the previous vimgrep result.

- Replace:
  - `<Leader>r` replaces the highlight in the current file.
  - `<Leader>R` replaces the highlight to all open buffers.
  - `<Leader>a` opens files (`*.*`) of the current directory.
  - `<Leader>A` opens files (`**/*.*`) of the subdirectories.

- Text edition:
  - `<Leader>z` toggles the case of a character.
  - `<leader>z` toggles the case of a selection, as well.
  - `ç` moves to the next misspelled word.
  - `Ç` moves to the previous misspelled word.
  - `<Leader>ç` suggests correctly spelled words.
  - `<Leader>tf` retabs the current selection.

- Clipboard:
  - `<Leader>y` copies text into the clipboard.
  - `<Leader>p` pastes text from the clipboard.

- Misc:
  - `<Leader>B` shows syntax highlighting groups.

- Plugins related:
  - `<Leader><TAB>` runs the code of the current buffer.
  - `<Leader>j` goes to the next GitGutter hunk.
  - `<Leader>k` goes to the previous GitGutter hunk.
  - `<Leader>i` adds the line to the staging area (GitGutter).
  - `<Leader>I` undoes the hunk (GitGutter).
  - `<Leader>c` toggles the commented code.
  - `<Leader>h` goes to the previous warning/error.
  - `<Leader>l` goes to the next warning/error.
  - `<Leader>q` toggles the quickfix window.
  - `<Leader>e` toggles the location list window.
  - `<Leader>g` toggles the plugin fugitive `:Gstatus`.
  - `<Leader>G` starts the fugitive command `:Gvdiff`.
  - `<Leader>u` toggles the plugin Undotree.
  - `<Leader>x` inits tabularize plugin.
  - `<Leader>X` inits tabularize plugin (only the first match).
  - `<Leader>W` inits ArgWrap plugin.
  - `<Leader>M` inits Markdown preview plugin.
  - `<Leader>gl` opens the URL under the cursor.
  - `<Leader>we` toggles the status of a vimwiki list item.

#### {a-z} keymaps:

- Moving around lines:
  - `ñ` toggles the cursor position: start/end of the line.
  - `gi` inits the plugin EasyAlign.

#### Tab keymaps:

- Indentation:
  - `<Tab>` adds one tabulator.
  - `<S-Tab>` removes one tabulator.

#### Commands

- `:WW` save the current buffer with sudo permissions.
