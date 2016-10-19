call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ternjs/tern_for_vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
call plug#end()

augroup config
	autocmd InsertEnter * set norelativenumber
	autocmd InsertLeave * set relativenumber
augroup END

augroup filetype_css
	autocmd!
	autocmd Filetype css setlocal expandtab
	autocmd Filetype css setlocal shiftwidth=2
	autocmd Filetype css setlocal softtabstop=2
	autocmd Filetype css setlocal tabstop=2
augroup END

augroup filetype_cucumber
	autocmd!
	autocmd Filetype cucumber setlocal expandtab
	autocmd Filetype cucumber setlocal shiftwidth=2
	autocmd Filetype cucumber setlocal softtabstop=2
	autocmd Filetype cucumber setlocal tabstop=2
augroup END

augroup filetype_elixir
	autocmd!
	autocmd Filetype elixir setlocal expandtab
	autocmd Filetype elixir setlocal shiftwidth=2
	autocmd Filetype elixir setlocal softtabstop=2
	autocmd Filetype elixir setlocal tabstop=2
augroup END

augroup filetype_erlang
	autocmd!
	autocmd Filetype erlang setlocal expandtab
	autocmd Filetype erlang setlocal shiftwidth=2
	autocmd Filetype erlang setlocal softtabstop=2
	autocmd Filetype erlang setlocal tabstop=2
augroup END

augroup filetype_gitcommit
	autocmd!
	autocmd Filetype gitcommit setlocal spell
	autocmd Filetype gitcommit setlocal spelllang=en_gb
augroup END

augroup filetype_html
	autocmd!
	autocmd Filetype html setlocal expandtab
	autocmd Filetype html setlocal shiftwidth=2
	autocmd Filetype html setlocal softtabstop=2
	autocmd Filetype html setlocal tabstop=2
augroup END

augroup filetype_javascript
	autocmd!
	autocmd Filetype javascript map <C-]> :TernDef<CR>
	autocmd Filetype javascript setlocal expandtab
	autocmd Filetype javascript setlocal shiftwidth=2
	autocmd Filetype javascript setlocal softtabstop=2
	autocmd Filetype javascript setlocal tabstop=2
augroup END

augroup filetype_markdown
	autocmd!
	autocmd Filetype markdown setlocal spell
	autocmd Filetype markdown setlocal spelllang=en_gb
augroup END

augroup filetype_python
	autocmd!
	autocmd Filetype python setlocal expandtab
	autocmd Filetype python setlocal shiftwidth=4
	autocmd Filetype python setlocal softtabstop=4
	autocmd Filetype python setlocal tabstop=4
augroup END

augroup filetype_ruby
	autocmd!
	autocmd FileType ruby compiler ruby
	autocmd Filetype ruby,eruby setlocal expandtab
	autocmd Filetype ruby,eruby setlocal shiftwidth=2
	autocmd Filetype ruby,eruby setlocal softtabstop=2
	autocmd Filetype ruby,eruby setlocal tabstop=2
augroup END

augroup filetype_scss
	autocmd!
	autocmd Filetype scss setlocal expandtab
	autocmd Filetype scss setlocal shiftwidth=2
	autocmd Filetype scss setlocal softtabstop=2
	autocmd Filetype scss setlocal tabstop=2
augroup END

augroup filetype_tex
	autocmd!
	autocmd Filetype tex setlocal expandtab
	autocmd Filetype tex setlocal shiftwidth=2
	autocmd Filetype tex setlocal softtabstop=2
	autocmd Filetype tex setlocal spell
	autocmd Filetype tex setlocal spelllang=en_gb
	autocmd Filetype tex setlocal tabstop=2
	autocmd Filetype tex setlocal textwidth=80
augroup END

augroup filetype_text
	autocmd!
	autocmd Filetype text setlocal spell
	autocmd Filetype text setlocal spelllang=en_gb
augroup END

augroup filetype_yaml
	autocmd!
	autocmd Filetype yaml setlocal expandtab
	autocmd Filetype yaml setlocal shiftwidth=2
	autocmd Filetype yaml setlocal softtabstop=2
	autocmd Filetype yaml setlocal tabstop=2
augroup END

color dracula

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

inoremap jk <esc>

let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_working_path_mode = 0
let mapleader=","

map <C-n> :NERDTreeToggle<CR>
map <leader>d :Dash<CR>
map <leader>n :NERDTreeFind<CR>

nnoremap j gj
nnoremap k gk
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

set background=dark
set clipboard=unnamed
set colorcolumn=80,120
set complete+=k
set completeopt-=preview
set cursorline
set diffopt=vertical
set directory=/tmp//
set hidden
set hlsearch
set ignorecase
set lazyredraw
set modelines=0
set mouse=a
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set relativenumber
set scrolloff=5
set showmatch
set smartcase
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
set termguicolors
set ttymouse=xterm2

if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

function! FormatJSON()
	execute "%!" . "python -m json.tool"
endfunction

command! FormatJSON call FormatJSON()
