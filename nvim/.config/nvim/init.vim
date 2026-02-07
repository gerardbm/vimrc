set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Neovide config
if exists("g:neovide")
	colorscheme cosmic
	CosmicLunarC3
	set guifont=Noto\ Mono\ for\ Powerline:h12
endif
