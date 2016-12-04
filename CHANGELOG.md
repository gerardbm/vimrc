## Changelog

= 1.5.2 =
* New toggle function to switch start and end of line with `ñ`.

= 1.5.1 =
* New NERDCommenter settings: default maps disabled.
* The maps `<Leader>x` (toggle comments) changed to `<Leader>c`.
* New Neomake/Syntastic settings: new error signs.
* New CtrlP settings: changed some prompt mappings.
* Added a new map `<Leader>x` to open `:Buffers` (FZF).
* Added a new map `<Leader>C` to open `:Commits` (FZF).
* The maps `<Leader>gu` (toggle Gundo) changed to `<Leader>u`.
* The map `<Leader>cd` (pwd directory) changed to `<Leader>bw`.
* The map `<Leader>by` (copy filepath) changed to `<Leader>by`.
* Added new 'Readline commands' for the Command mode, navigate like in a terminal.
* The maps `<Leader>u` (toggle case) changed to `<Leader><`.
* The function to toggle GitGutterPreviewHunk has been improved.

= 1.5.0 =
* Added a new function: search into a Visual selection.
* Removed the inoremap ';;' (inserts a comma and `<Esc>`).
* The map `<Leader>m` now returns to the last column cursor position.
* Display the current dictionary when we toggle between dictionaries.

= 1.4.4 =
* Removed indentation settings from markdown and mail file types.
* Removed useless nnoremap and vnoremap to `<NOP>` for Windows key.
* Fixed Caps Lock setting: leaving 'Insert Mode' now disables CAPS automatically.

= 1.4.3 =
* Added the setting `nomore` to avoid the pause of listings.

= 1.4.2 =
* Fixed the inoremap `<Leader>p` (paste from clipboard one character left).

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
