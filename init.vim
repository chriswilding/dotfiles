call plug#begin('~/.local/share/nvim/plug')
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'jdkanani/vim-material-theme'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-mix-format'
Plug 'pbogut/deoplete-elm'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': [ 'css', 'graphql', 'javascript', 'json', 'less', 'markdown', 'scss', 'typescript', 'vue' ] }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-erlang/erlang-motions.vim'
Plug 'vim-erlang/vim-dialyzer'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-skeletons'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-rebar'
Plug 'w0rp/ale'
Plug 'zchee/deoplete-go', { 'do': 'make' }
call plug#end()

augroup Highlight
  autocmd!

  autocmd ColorScheme * highlight link xmlEndTag xmlTag
augroup END

colorscheme material-theme

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'

  set grepprg=rg\ --vimgrep
endif

inoremap jk <esc>

let NERDTreeShowHidden = 1
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='hybrid'
let g:deoplete#enable_at_startup = 1
let g:go_fmt_command = 'goimports'
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_types = 1
let g:go_list_type = 'quickfix'
let g:mix_format_on_save = 1
let g:polyglot_disabled = ['elixir', 'elm', 'erlang', 'go']
let mapleader = ','

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <leader>n :NERDTreeFind<CR>
map Q gq

nnoremap / /\v
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap Y y$
nnoremap j gj
nnoremap k gk

set background=dark
set clipboard=unnamed
set complete+=k
set completeopt-=preview
set cursorline
set diffopt=vertical
set directory=/tmp//
set guioptions=M
set hidden
set hlsearch
set ignorecase
set lazyredraw
set matchpairs+=<:>
set mouse=a
set noerrorbells
set nomodeline
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set relativenumber
set scrolloff=5
set shortmess+=I
set showmatch
set smartcase
set spell spelllang=en_gb
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
set termguicolors
set undodir=/tmp//
set undofile
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildmode=list:longest,list:full

vnoremap / /\v

vmap < <gv
vmap > >gv

function! FormatJSON() abort
  if executable('jq')
    execute '%!' . 'jq .'
  else
    echoerr 'jq is required to format json'
  endif
endfunction

command! FormatJSON call FormatJSON()

function! Trim() abort
	let pos = getpos('.')
	%s/\s*$//
	call setpos('.', pos)
endfunction

command! Trim call Trim()
