set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bronson/vim-trailing-whitespace'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'rizzatti/dash.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-ruby/vim-ruby'
call plug#end()

autocmd Filetype css setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype cucumber setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype elixir setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype erlang setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd Filetype gitcommit set spell spelllang=en_gb
autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype html.handlebars setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype javascript setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype markdown set spell spelllang=en_gb
autocmd Filetype python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd Filetype ruby,eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype scss setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype tex setlocal expandtab spell shiftwidth=2 softtabstop=2 tabstop=2 textwidth=80
autocmd Filetype text setlocal spell
autocmd Filetype yaml setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

inoremap jk <esc>

let NERDTreeShowHidden=1
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:markdown_fenced_languages = ['css', 'erlang', 'elixir', 'javascript', 'html', 'python', 'ruby', 'sh']
let g:mustache_abbreviations = 1
let g:rspec_command = "Dispatch rspec {spec}"
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

map <C-n> :NERDTreeToggle<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set colorcolumn=80
set complete=kspell
set directory=/tmp//
set mouse=a
set number
set omnifunc=syntaxcomplete#Complete
set relativenumber
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
set ttymouse=xterm2
