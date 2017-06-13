## Changelog

= 1.14.1 =
* Follow vimscript style guide.
* Switch nnoremaps `<Leader><BS>` and `<Leader>m`.
* Remove `\<` and `\>` from highlight the word under the cursor.
* Remove nnoremaps `<Leader>ww` and `<Leader>wg` (spelling).
* Add `g:markdown_fenced_languages` for some languages.
* Fix `ToggleCPosition`, use `$` instead of `g_`.

= 1.14.0 =
* Install Atomic color scheme as plugin.
* Add the nnoremap `<Leader>i` for `:GitGutterStageHunk`.
* Add the nnoremap `<Leader>I` for `:GitGutterUndoHunk`.
* Remove background setting. Color scheme manages it.
* Remove the workaround for ncurses 6.0 on neovim.
* Add the cnoremap `<C-z>` to paste yanked text (`<C-R><C-W>`).
* Change foldmethod to marker.

= 1.13.1 =
* Fix vnoremap `<Leader><Tab>` to execute `:QuickRun`.

= 1.13.0 =
* Remove Syntastic and Neomake from Vim/Neovim. Use ALE.
  - Syntastic is not async.
  - Syntastic and Neomake don't lint while coding.
* Use QuickRun to run code in Neovim, with better settings.
  - QuickRun can run the selected lines in 'Visual mode'.
* Remove function for `:Glog`. Use the plugin GV.
  - It does not populate the quickfix, so it's better for me.
  - It is possible to track the changes in the selected lines.
  - And it shows the last commits with a nicer format.
* Finally, remove FZF plugins. I prefer CtrlP + GV combo.
* So, remove the nnoremap `<Leader>C` to open `:Commits`.
* Also, install the plugin vim-ruby. (Support for ruby).
* Expand neosnippet with `<C-q>` instead of `<C-z>`.
  - `<C-q>` is closer to `Tab` and avoid conflicts with GV.
* Fix some makeprg settings, and drop cpp.

= 1.12.3 =
* The command `:W` changed to :`WW`. It was in conflict.
* Added a new function for Neovim: `ToggleTerminal`.

= 1.12.2 = (only Neovim)
* Added python2 path for deoplete. It's optional.
* Added `mouse=a` because it's not a default in nvim 2.0.
* Cursor shape options changed in nvim 2.0, so I updated them.
* Disabled true colors for terminal (old option is ignored).

= 1.12.1 =
* Fixed the command `:W`. It was not well defined.
* Added a workaround for ncurses 6.0 on Archlinux/nvim.
* Yank the last pasted text automatically (`pgvy`).

= 1.12.0 =
* Added the command `:W` to save a file with sudo permissions.

= 1.11.0 =
* Removed Vimshell plugin from Neovim (unnecessary).
* The nmap `<G-p>` (GitGutter preview) changed to `<C-g>`.
* Improved the nnoremap `<Leader>G` (added `gg`).
* The map `<C-s>` (CtrlP menu) changed to `<C-p>`.
* Better prompt mappings (readline) for CtrlP plugin.
* Added the nnoremap `<C-s>` to open `:OpenSession`.
* The vnoremaps `<Leader><` (toggle case) changed to `<Leader>z`.
* The nnoremap `<Leader>z` (`:FZF`) now toggles the caps.
* The nnoremap `<Leader>Z` (`:Commits`) changed to `<Leader>C`.
* Added new function to toggle vim-fugitive-:Glog with `<C-z>`.
* Deleted the navigation maps from Insert mode `<expr>^X@sh`.
* Deleted the navigation maps from Command mode `<expr>^X@sh`.
* Added the inoremap `<C-s>` to delete the last character.
* Added the inoremap `<C-d>` to delete the current character.
* Added the cnoremap `<C-s>` to delete the last character.
* Added the cnoremap `<C-d>` to delete the current character.
* Extended the nnoremap `<C-t>` to vim (open `:Vimshell`).
* Vim supports cursor shape only for `rxvt\|xterm\|tmux`.

= 1.10.0 =
* Added the plugin goyo.

= 1.9.0 =
* Switched the plugin Gundo to Undotree (tired of Python 2.4+ requirement).

= 1.8.2 =
* Fixed Neomake settings: `BufEnter` changed to `BufWinEnter`.
* Added a function to close the quickfix window if it's the last window.

= 1.8.1 =
* Added the nnoremap `<C-t>` to open the `:terminal` (only for Neovim).
* Added the tnoremap `<C-c>` to switch `:terminal` to the last window.

= 1.8.0 =
* Added the plugin neco-vim.
* Added the plugin neco-syntax.
* Added the plugin neopairs.

= 1.7.6 =
* Maps `<C-s>` (neosnippet) changed to `<C-d>`; had conflict with CtrlP maps.

= 1.7.5 =
* Autocompletion fixes.
* Removed the plugin deoplete-ternjs because it has a .tern-port issue.

= 1.7.4 =
* Tern fix: do not create .tern-port file.

= 1.7.3 =
* Show hidden files into CtrlP menu.

= 1.7.2 =
* Removed the nnoremap and vnoremap `<Leader>4` to `g$`.
* Removed the nnoremap and vnoremap `<Leader>6` to `g^`.

= 1.7.1 =
* The maps `<C-d>` (expand neosnippet) changed to `<C-s>`. Conflict fix.

= 1.7.0 =
* Removed all the `<Leader>` commands from Insert mode.
* Removed most of the `<Leader>` commands from Visual mode.
* Removed the fast Escape key (`<Leader><Leader>`).
* The `<Esc>` function can be used with the triggered `<C-c>`.
* Removed the plugin (a.vim), it was annoying and useless.
* Added the nnoremap `<Leader>G` for the command `:Gvdiff`.
* CtrlP map changed to `<C-s>` (`<C-c>` crashed in Visual mode).
* The nnoremap `<C-s>` (show syntax groups) changed to `<Leader>B`.
* Added the nnoremap `<Leader><Space>` to search backward (`?`).
* Also, better notation for `^C` maps (letters in lowercase).

= 1.6.0 =
* Installed the plugin 'deoplete-go' (autocompletion).
* Installed the plugin 'gocode' (autocompletion).
* Installed the plugin 'deoplete-ternjs' (autocompletion).
* Installed the plugin 'jspc' (autocompletion).
* Installed the plugin 'phpcomplete-extended' (autocompletion).
* Installed the plugin 'clang_complete' (autocompletion).
* Removed the plugin 'phpcompletion'.
* Removed the plugin 'vim-clang'.
* Added the nnoremap `<Leader>g` to toggle `:Gstatus` (fugitive).
* Added ignore git, hg and svn files for CtrlP plugin
* Added more general settings for deoplete plugin.
* Added settings for the plugin 'deoplete-go'.
* Added settings for the plugin 'deoplete-jedi'.
* Added settings for the plugin 'deoplete-ternjs'.
* Added settings for the plugin 'phpcompletion-extended'.
* Added settings for the plugin 'clang_complete'.
* The maps `<C-s>` (expand neosnippet) changed to `<C-d>`.
* The maps `<Leader>ga` (EasyAlign plugin) changed to `gi`.
* The vnoremap `<Leader>ta` (tabularize) changed to `<Leader>x`.
* The vnoremap `<Leader>t1` (tabularize first) changed to `<Leader>X`.
* Added settings for the plugin 'closetag', also for PHP and Ruby.
* Added settings for the plugin 'surround', also for PHP and Ruby.
* Added «omnifunc» settings (better autocompletions).
* Duplicated for Visual modes the function to toggle `^`/`g_`.


= 1.5.7 =
* Added the inoremaps `<Tab>` and `<S-Tab>`.
* Better misspelled words navigation with `ç` and `Ç`.
* The map `<Leader>w?` (suggestions) changed to `<Leader>ç`.
* The map `<Leader>wa` (wrong is good) changed to `<Leader>wg`.
* The map `<Leader>wx` (wrong is wrong) changed to `<Leader>ww`.

= 1.5.6 =
* Removed the nnoremap `<C-c>` (stop pressing message).
* The map `<Leader><Space>` (open CtrlP) changed to `<C-c>`.
* The maps `<Leader>x` (open FZF buffers) have been removed.
* The maps `<Leader>C` (poen FZF commits) changed to `<Leader>Z`.

= 1.5.5 =
* Added and fixed the vnoremap to vimgrep into the visual selection.
* The nnoremap `<Leader>do` (replace to all open files) changed to `<Leader>R`.

= 1.5.4 =
* Added `:copen` to `:vimgrep` nnoremaps.
* Removed the vnoremap to vimgrep into the visual selection.

= 1.5.3 =
* Jump to the search results (grep, vimgrep) in buffers, not in tabs.

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
