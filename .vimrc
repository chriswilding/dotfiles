set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

call plug#begin()
Plug 'elixir-lang/vim-elixir'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-ruby/vim-ruby'
call plug#end()

set colorcolumn=80
set complete=kspell
set number
set omnifunc=syntaxcomplete#Complete
set spell spelllang=en_gb
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add

autocmd Filetype erlang setlocal sts=4 sw=4 ts=4
autocmd Filetype html setlocal sts=2 sw=2 ts=2
autocmd Filetype javascript setlocal sts=2 sw=2 ts=2
autocmd Filetype ruby,eruby setlocal sts=2 sw=2 ts=2
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1    
autocmd Filetype python setlocal sts=4 sw=4 ts=4
autocmd Filetype yaml setlocal sts=2 sw=2 ts=2
