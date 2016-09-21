# Public vimrc
Gerard's Vim & Neovim configuration.

### Changelog
= 1.1.2 =
* Fixed `xterm-keys` for tmux.
* Improved conditional to enable 256 colors, matching to a `$TERM` pattern.
* Turn `viminfo^=%` to comment (don't remember the last open buffer on close).
* Better maps for splitting and resizing windows, so it fits in my `.tmux.conf`.
* Stop resizing all windows when the terminal is resized. Makes no sense.
* Removed the map `<BS>` for deleting the last character in Normal Mode.

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
* Added a plugin for markdown preview. It requires nodejs.
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
* Installed the plugin QuickRun.
* Set `updatetime` to 250.

= 1.0.0 =
* Initial commit, first version.
