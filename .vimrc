set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-endwise'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-erlang/vim-erlang-runtime'
call plug#end()

autocmd Filetype erlang setlocal sts=4 sw=4 ts=4
autocmd Filetype html setlocal sts=2 sw=2 ts=2
autocmd Filetype javascript setlocal sts=2 sw=2 ts=2
autocmd Filetype ruby setlocal sts=2 sw=2 ts=2
autocmd Filetype python setlocal sts=4 sw=4 ts=4
autocmd Filetype yaml setlocal sts=2 sw=2 ts=2

set colorcolumn=80
set complete=kspell
set number
set spell spelllang=en_gb
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
