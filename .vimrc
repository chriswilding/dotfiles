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
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-ruby/vim-ruby'
call plug#end()

set colorcolumn=80
set complete=kspell
set number
set omnifunc=syntaxcomplete#Complete
set relativenumber
set spell spelllang=en_gb
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add

let g:markdown_fenced_languages = ['css', 'erlang', 'elixir', 'javascript', 'html', 'python', 'ruby', 'sh']
let g:rspec_command = "Dispatch rspec {spec}"
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1    
let g:rubycomplete_rails = 1

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

autocmd Filetype erlang setlocal sts=4 sw=4 ts=4
autocmd Filetype html setlocal sts=2 sw=2 ts=2
autocmd Filetype javascript setlocal sts=2 sw=2 ts=2
autocmd Filetype python setlocal sts=4 sw=4 ts=4
autocmd Filetype ruby,eruby setlocal sts=2 sw=2 ts=2
autocmd Filetype yaml setlocal sts=2 sw=2 ts=2
autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber
