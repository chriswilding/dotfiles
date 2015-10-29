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
call plug#end()

autocmd Filetype html setlocal sts=2 sw=2 ts=2
autocmd Filetype javascript setlocal sts=2 sw=2 ts=2
autocmd Filetype ruby setlocal sts=2 sw=2 ts=2
autocmd Filetype python setlocal sts=4 sw=4 ts=4

set colorcolumn=80
set number
