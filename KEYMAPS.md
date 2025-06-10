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
  - `<F11>` toggles Goyo plugin.
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
  - `<Leader>by` copies the filepath to the clipboard.
  - `<Leader>dd` switches CWD to the current filepath.
  - `<Leader>dg` switches CWD to the git root directory.
  - `yab` yanks the buffer content.
  - `dab` deletes the buffer content.
  - `vab` selects the buffer content.

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
  - `<Leader>,f` toggles maximize/minimize the current window.
  - `<Leader>,` it is `wincmd` to easily manage windows.
  - `<Leader>,-` splits window horizontally.
  - `<Leader>,.` splits window vertically.
  - `<Leader>,j` closes the current window.
  - `<Leader>,x` closes the current window forcing it.
  - `<Leader>,,` restores the proportional size of windows.
  - `<Leader>,l` returns to the last window.
  - `<Leader>,p` goes to the previous window.
  - `<Leader>,n` goes to the next window.
  - `<Leader>,o` closes all windows excepting the current.
  - `<M-d>.` scrolls down the preview window from another window.
  - `<M-u>.` scrolls up the preview window from another window.
  - `<Leader>.` closes the preview window from another window.
  - `q` closes the preview window (`:pclose`) from inside.

### Edition
- Normal mode
  - `J` moves lines down.
  - `K` moves lines up.
  - `H` moves character left.
  - `L` moves character right.
  - `<C-j>` joins lines.
  - `<C-k>` splits lines.
  - `<C-a>` increases a number value.
  - `<C-x>` decreases a number value.
  - `<C-e>` scrolls the window down [count].
  - `<C-y>` scrolls the window up [count].
  - `<C-d>` scrolls the window down 50%.
  - `<C-u>` scrolls the window up 50%.
  - `<C-b>` inits the Visual-block mode.
  - `<Leader>bf` autoformat a buffer (sql, js, html, xml, css).
  - `<Leader><BS>` deletes the Windows ^M.
  - `<Leader>o` isolates the current line.
  - `<Leader>f` enters a new line down from 'Normal Mode'.
  - `<Leader>F` enters a new line up from 'Normal Mode'.
  - `<Leader>tf` retabs the current buffer.
  - `<Leader>dt` removes trailing white spaces.
  - `<Leader>p` pastes text from the clipboard.
  - `coi` sets the conceallevel to 0, concealcursor to niv.
  - `coo` sets the conceallevel to 2, concealcursor to vc.
  - `cop` sets the conceallevel to 2, concealcursor to niv.
  - `com` sets the conceallevel to 3, concealcursor to niv.
  - `zl` moves to the next misspelled word.
  - `zh` moves to the previous misspelled word.
  - `zp` suggests correctly spelled words.
  - `ñ` toggles the cursor position: start of text/end of line.
  - `cc` toggles the commented code.
  - `cx` duplicates a line up.
  - `cv` duplicates a line down.
  - `<Tab>` adds one tabulator.
  - `<S-Tab>` deletes one tabulator.
  - `<C-y>` toggles AutoPairs plugin.
  - `<C-z>` jumps to the next AutoPairs match.
  - `=` increases a markdown heading (plugin `vim-md-headings`).
  - `_` decreases a markdown heading (plugin `vim-md-headings`).
  - `<leader>we` toggles a checkbox (plugin `vim-md-checkbox`).
  - `<leader>wx` removes a checkbox (plugin `vim-md-checkbox`).
  - `gl` goes to the next markdown link.
  - `gh` goes to the previous markdown link.
  - `gd` removes the next markdown link.
  - `<Leader>cx` displays the cursor position and buffer word-count.

- Visual mode
  - `<Leader>y` copies the selection into the clipboard.
  - `<Leader>z` toggles the case of the selection.
  - `<Leader>tf` retabs the current selection.
  - `<C-s>` expands neosnippet.
  - `v` expands the region selected.
  - `m` shrinks the selection.
  - `<Leader>cx` displays the cursor position and selection word-count.

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
  - `<C-l>` toggles the CapsLock key.
  - `<C-s>` expands neosnippet.
  - `<C-x>` ins-completion.
  - `<C-n>` keyword completion: next.
  - `<C-p>` keyword completion: previous.
  - `ñr` inserts `[]` faster.
  - `ñb` inserts `()` faster.
  - `ñB` inserts `{}` faster.
  - `ññ` inserts `{{  }}` faster.
  - `ñp` inserts `{%  %}` faster.
  - `ñ-` inserts `{%-  -%}` faster.
  - `ñl` inserts a `\` faster.
  - `ñm` enter Vim's expression register (math).
  - `<C-z>` jumps to the next AutoPairs match.
  - `<C-q>` toggles AutoPairs plugin.

- Command mode
  - `<C-a>` moves the cursor to the start of line (0).
  - `<C-e>` moves the cursor to the end of line ($).
  - `<C-b>` moves the cursor back one character.
  - `<C-f>` moves the cursor forward one character.
  - `<C-h>` deletes the last character.
  - `<C-d>` deletes the current character.
  - `<C-g>` deletes a word, forward.
  - `<C-w>` deletes a word, backward.
  - `<C-u>` deletes all characters before the cursor.
  - `<C-j>` enters a new line.
  - `<C-k>` enters a digraph.
  - `<C-v>` pastes the yanked text (`<C-r>"`).
  - `<C-l>` toggles the CapsLock key.
  - `<C-n>` navigates command history: next.
  - `<C-p>` navigates command history: previous.

- Surround maps for markdown
  - `=` surrounds to `{% \r %}` (Liquid)
  - `-` surrounds to `{%- \r -%}` (Liquid)
  - `i` surrounds to `_\r_`
  - `o` surrounds to `**\r**`
  - `u` surrounds to `<u>\r</u>`
  - `d` surrounds to `<del>\r</del>`
  - `k` surrounds to `<kbd>\r</kbd>`
  - `n` surrounds to `<sub>\r</sub>`
  - `p` surrounds to `<sup>\r</sup>`
  - `h` surrounds to `[\r](//)`
  - `j` surrounds to `![\r](/images/){: .align-}`
  - `e` surrounds to `[\r\](){:rel="noopener noreferrer" target="_blank"}`
  - `y` surrounds to `<a href=\"\" rel=\"noopener noreferrer\" target=\"_blank\">\r<\/a>`
  - `r` surrounds to `[\r]`
  - `b` surrounds to `(\r)`
  - `B` surrounds to `{\r}`
  - `x` surrounds to `«\r»`

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

### Arglist
  - `<Leader>aa` adds files to the arglist with `:argadd`.
  - `<Leader>ad` deletes files from the arglist with `:argdelete`.
  - `<Leader>an` creates a new arglist starting with `:args **/*.`.
  - `<Leader>al` displays the arglist vertically.

### Git
- Normal mode
  - `<C-s>` toggles the plugin fugitive `:Gstatus`.
  - `<C-g>` previews the current GitGutter hunk.
  - `<Leader>j` goes to the next GitGutter hunk.
  - `<Leader>k` goes to the previous GitGutter hunk.
  - `<Leader>ga` adds the line to the staging area (GitGutter).
  - `<Leader>gu` undoes the hunk (GitGutter).
  - `<Leader>gv` starts the fugitive command `:Gvdiffsplit`.
  - `<Leader>gh` starts the fugitive command `:Gvdiffsplit HEAD`.
  - `<Leader>gb` starts the fugitive command `:Git blame`.
  - `<Leader>gg` searches a string between commits (Glog).
  - `<Leader>gz` opens the menu of `:Commits` (FZF).

### Errors
- Normal mode
  - `<Leader>h` goes to the previous warning/error.
  - `<Leader>l` goes to the next warning/error.
  - `<Leader>q` toggles the quickfix window.
  - `<Leader>e` toggles the location list window.

### Tools
- Normal mode
  - `<C-n>` opens, focuses or closes NERDTree.
  - `<C-t>` opens, focuses or closes Tagbar.
  - `<C-q>` opens the menu of `:Files` (FZF).
  - `<C-p>` opens the menu of `:Buffers` (FZF).
  - `<Leader>uh` opens the menu of `:History` (FZF).
  - `<Leader>ul` opens the menu of `:BLines` (FZF).
  - `<Leader>um` opens the menu of `:BMarks` (FZF).
  - `<Leader>uu` opens the menu of `:BTags` (FZF).
  - `<Leader>uf` opens the menu of `:BTags`, filter functions (FZF).
  - `<Leader>uv` opens the menu of `:BTags`, filter variables (FZF).
  - `<Leader>ut` opens the menu of `:Tags` (FZF).
  - `<Leader>ii` runs a script and previews it in a split window.
  - `<Leader>ij` runs a script into a tmux window.
  - `<Leader>ia` adds/changes the path of a database.
  - `<Leader>ii` executes SQL (Sqlite3) and previews it in a split window.
  - `<Leader>ii` executes Maxima and previews it in a split window.
  - `<Leader>ii` converts LaTeX to PDF and previews it with Mupdf.
  - `<Leader>ii` converts MD to PDF and previews it with Mupdf.
  - `<Leader>ih` converts MD to HTML and previews it with Mupdf.
  - `<Leader>ij` converts MD to EPUB and previews it with Mupdf.
  - `<Leader>ii` converts UML (PlantUML) to PNG and previews it with Mupdf.
  - `<Leader>ii` converts EUK (Eukleides) to PNG and previews it with Mupdf.
  - `<Leader>ii` converts ASY (Asymptote) to PNG and previews it with Mupdf.
  - `<Leader>ii` converts PP3 (Sky charts) to PNG and previews it with Mupdf.
  - `<Leader>ii` converts PLT (Gnuplot) to PNG and previews it with Mupdf.
  - `<Leader>ii` renders POV (POV-Ray) to PNG and previews it with Mupdf.
  - `<Leader>ii` runs/stops bundle in the background, for liquid files.
  - `<Leader>ij` previews the current post (MD file) in the web browser.
  - `<Leader>cc` gets the keyword density of a text.
  - `<Leader>B` shows syntax highlighting groups.
  - `<Leader>U` toggles the plugin Undotree.
  - `<Leader>W` inits ArgWrap plugin.
  - `<Leader>ww` opens the personal vimwiki.
  - `<Leader>we` toggles the status of a vimwiki list item.
  - `gll` increases indentation level of a vimwiki list item.
  - `glh` decreases indentation level of a vimwiki list item.
  - `<Leader>gl` opens the URL under the cursor in a web browser.
  - `gi` inits the plugin EasyAlign.

- Visual mode
  - `<Leader>x` inits tabularize plugin.
  - `<Leader>X` inits tabularize plugin (only the first match).

- FZF plugin (customized)
  - `<C-i>` hides the window preview (into FZF).

### Terminal
- Terminal mode
  - `<F7>` returns to the last window (Neovim).
  - `<F7>t` returns to the last window (Vim).

### Commands
- Command mode
  - `:WW` save the current buffer with sudo permissions.
