### Interface
- Normal mode
  - `<F1>` it's the default help.
  - `<F2>` renames the current buffer.
  - `<F3>` toggles line numbers.
  - `<F4>` toggles relative numbers.
  - `<F5>` reloads all open buffers.
  - `<F6>` toggles list.
  - `<F7>` opens the `:terminal`.
  - `<F8>` toggles spell checking.
  - `<F9>` toggles spell dictionaries.
  - `<F10>` toggles colorcolumn.
  - `<F11>` reloads the current colorscheme.
  - `<F12>` reloads your Vim/Neovim configuration.

### Buffers
- Normal mode
  - `<C-h>` goes to the previous buffer.
  - `<C-l>` goes to the next buffer.
  - `<Leader>bd` closes the current buffer.
  - `<Leader>s` updates the buffer (save).
  - `<Leader>S` updates all the buffers.
  - `<Leader>bb` opens the `:edit` command.
  - `<Leader>bg` opens a list of all buffers.
  - `<Leader>bw` switches CWD to the current filepath.
  - `<Leader>by` copies the filepath to the clipboard.

### Tabs
- Normal mode
  - `<Leader>td` closes the current tab.
  - `<Leader>to` closes all the tabs except the current.
  - `<Leader>tt` opens the `:tabedit` command.
  - `<Leader>tr` moves the tab position to the left.
  - `<Leader>ty` moves the tab position to the right.

### Windows
- Normal mode
  - `<M-h>` goes to the window: left.
  - `<M-j>` goes to the window: down.
  - `<M-k>` goes to the window: up.
  - `<M-l>` goes to the window: right.
  - `<C-f>` toggles maximize/minimize the current window.
  - `<Leader>.` it is `wincmd` to easily manage windows.
  - `<Leader>.-` splits window horizontally.
  - `<Leader>..` splits window vertically.
  - `<Leader>.j` closes the current window.
  - `<Leader>.x` closes the current window forcing it.
  - `<Leader>.,` restores the proportional size of windows.
  - `<Leader>.l` returns to the last window.
  - `<Leader>.p` goes to the previous window.
  - `<Leader>.n` goes to the next window.
  - `<Leader>.o` closes all windows excepting the current.

### Edition
- Normal mode
  - `<C-j>` moves lines down.
  - `<C-k>` moves lines up.
  - `<C-a>` increases a number value.
  - `<C-x>` decreases a number value.
  - `<C-e>` scrolls the window down [count].
  - `<C-y>` scrolls the window up [count].
  - `<C-d>` scrolls the window down 50%.
  - `<C-u>` scrolls the window up 50%.
  - `<Leader>bf` autoformat a buffer (sql, js, html, xml, css).
  - `<Leader><BS>` deletes the Windows ^M.
  - `<Leader>o` isolates the current line.
  - `<Leader>f` enters a new line down from 'Normal Mode'.
  - `<Leader>F` enters a new line up from 'Normal Mode'.
  - `<Leader>ç` suggests correctly spelled words.
  - `<Leader>tf` retabs the current buffer.
  - `<Leader>wd` removes trailing white spaces.
  - `<Leader>p` pastes text from the clipboard.
  - `<Leader>coo` sets the conceallevel to 0.
  - `<Leader>coi` sets the conceallevel to 2.
  - `ç` moves to the next misspelled word.
  - `Ç` moves to the previous misspelled word.
  - `ñ` toggles the cursor position: start of text/end of line.
  - `cc` toggles the commented code.
  - `cx` duplicates a line up.
  - `cv` duplicates a line down.
  - `<Tab>` adds one tabulator.
  - `<S-Tab>` deletes one tabulator.
  - `<M-n>` jumps to the next AutoPairs match.
  - `<M-p>` toggles AutoPairs plugin.

- Visual mode
  - `<Leader>y` copies the selection into the clipboard.
  - `<Leader>z` toggles the case of the selection.
  - `<Leader>tf` retabs the current selection.
  - `<C-q>` expands neosnippet.
  - `v` expands the region selected.
  - `<C-v>` shrinks the selection.

- Insert mode
  - `<C-a>` moves the cursor to the start of line (0).
  - `<C-e>` moves the cursor to the end of line ($).
  - `<C-b>` moves the cursor back one character.
  - `<C-f>` moves the cursor forward one character.
  - `<C-h>` deletes the last character.
  - `<C-d>` deletes the current character.
  - `<C-u>` deletes all characters before the cursor.
  - `<C-j>` enters a new line.
  - `<C-k>` enters a digraph.
  - `<C-z>` starts OMNI SQL Completion (only `ft_sql`).
  - `<C-l>` toggles the CapsLock key.
  - `<C-q>` expands neosnippet.
  - `<C-x>` ins-completion.
  - `<C-n>` keyword completion: next.
  - `<C-p>` keyword completion: previous.
  - `ññ` inserts `[]` faster.
  - `ÑÑ` inserts `{}` faster.
  - `<M-n>` jumps to the next AutoPairs match.
  - `<M-p>` toggles AutoPairs plugin.

- Command mode
  - `<C-a>` moves the cursor to the start of line (0).
  - `<C-e>` moves the cursor to the end of line ($).
  - `<C-b>` moves the cursor back one character.
  - `<C-f>` moves the cursor forward one character.
  - `<C-h>` deletes the last character.
  - `<C-d>` deletes the current character.
  - `<C-u>` deletes all characters before the cursor.
  - `<C-j>` enters a new line.
  - `<C-k>` enters a digraph.
  - `<C-z>` pastes the yanked text (`<C-r><C-w>`).
  - `<C-l>` toggles the CapsLock key.
  - `<C-n>` navigates command history: next.
  - `<C-p>` navigates command history: previous.

### Search
- Normal mode
  - `<Space>` searches forward for the pattern.
  - `<Leader><Space>` searches backward for the pattern.
  - `<Leader><CR>` highlights the word under the cursor.
  - `<Leader>m` disables highlight.

- Visual mode
  - `<Leader><CR>` highlights the current selection.

### Grep
- Normal mode
  - `<Leader>vg` vimgreps the highlight in the current buffer.
  - `<Leader>vf` vimgreps the highlight in the current directory.
  - `<Leader>vv` greps the highlight in the current buffer.
  - `<Leader>vb` greps the highlight in the loaded buffers.
  - `<Leader>vn` greps the highlight in the current directory.
  - `<Leader>va` greps the highlight in the current arglist.
  - `<Leader>vm` grepadds the highlight of the current buffer.
  - `<Leader>n` goes to the next vimgrep result.
  - `<Leader>N` goes to the previous vimgrep result.

### Replace
- Normal mode
  - `<Leader>r` replaces the highlight in the current buffer.
  - `<Leader>R` replaces the highlight the loaded buffers.
  - `<Leader>Q` replaces the highlight to each valid quickfix entry.
  - `<Leader>a` opens files (`*.*`) of the current directory.
  - `<Leader>A` opens files (`**/*.*`) of the subdirectories.

### Git
- Normal mode
  - `<C-s>` toggles the plugin fugitive `:Gstatus`.
  - `<C-g>` previews the current GitGutter hunk.
  - `<C-z>` opens a list of the last commits (GV)'.
  - `<Leader>j` goes to the next GitGutter hunk.
  - `<Leader>k` goes to the previous GitGutter hunk.
  - `<Leader>gs` adds the line to the staging area (GitGutter).
  - `<Leader>gu` undoes the hunk (GitGutter).
  - `<Leader>gv` starts the fugitive command `:Gvdiff`.
  - `<Leader>gh` starts the fugitive command `:Gsdiff`.
  - `<Leader>gb` starts the fugitive command `:Gblame`.
  - `<Leader>gg` searches a string between commits (Glog).

### Errors
- Normal mode
  - `<Leader>h` goes to the previous warning/error.
  - `<Leader>l` goes to the next warning/error.
  - `<Leader>q` toggles the quickfix window.
  - `<Leader>e` toggles the location list window.

### Tools
- Normal mode
  - `<C-n>` opens, focuses or closes NERDTree.
  - `<C-p>` opens the CtrlP menu buffers.
  - `<C-q>` display a list of sessions to open.
  - `<C-t>` opens, focuses or closes Tagbar.
  - `<Leader>ii` runs Python code into a tmux window.
  - `<Leader>ih` converts MD to HTML and previews it with Mupdf.
  - `<Leader>ij` converts MD to PDF and previews it with Mupdf.
  - `<Leader>ik` converts MD to EPUB and previews it with Mupdf.
  - `<Leader><TAB>` runs the code of the current buffer.
  - `<Leader>B` shows syntax highlighting groups.
  - `<Leader>u` toggles the plugin Undotree.
  - `<Leader>W` inits ArgWrap plugin.
  - `<Leader>ww` opens the personal vimwiki.
  - `<Leader>we` toggles the status of a vimwiki list item.
  - `<Leader>gl` opens the URL under the cursor in a web browser.
  - `<Leader>ims` runs the command `:NotebookStart`.
  - `<Leader>imc` runs the command `:NotebookClose`.
  - `<Leader>imm` runs the command `:NotebookEvaluate`.
  - `gi` inits the plugin EasyAlign.

- Visual mode
  - `<Leader>x` inits tabularize plugin.
  - `<Leader>X` inits tabularize plugin (only the first match).

- CtrlP plugin (customized)
  - `<C-p>` navigates history: previous (into CtrlP).
  - `<C-n>` navigates history: next (into CtrlP).
  - `<C-h>` toggles type (into CtrlP).
  - `<C-l>` toggles type (into CtrlP).
  - `<C-b>` moves cursor to the left (into CtrlP).
  - `<C-f>` moves cursor to the right (into CtrlP).
  - `<C-s>` deletes the last character.
  - `<C-d>` deletes the current character.
  - `<C-u>` deletes the entire line.
  - `<C-g>` runs the `ToggleByFname` function.

### Terminal
- Terminal mode
  - `<F7>` returns to the last window (Neovim).
  - `<F7>t` returns to the last window (Vim).

### Commands
- Command mode
  - `:WW` save the current buffer with sudo permissions.
