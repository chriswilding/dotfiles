call plug#begin('~/.local/share/nvim/plug')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
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

color dracula

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

highlight htmlArg cterm=italic
highlight link xmlEndTag xmlTag

inoremap jk <esc>

let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
let NERDTreeShowHidden = 1
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_max_line_indicator = 'line'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:deoplete#enable_at_startup = 1
let g:dracula_bold = 1
let g:dracula_colorterm = 1
let g:dracula_inverse = 1
let g:dracula_italic = 1
let g:dracula_undercurl = 1
let g:dracula_underline = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_fmt_fail_silently = 1
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

set clipboard=unnamed
set complete+=k
set completeopt-=preview
set cursorline
set diffopt=vertical
set directory=/tmp//
set encoding=utf-8
set gdefault
set grepprg=rg\ --vimgrep
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

function! FormatJSON()
	execute '%!' . 'jq .'
endfunction

command! FormatJSON call FormatJSON()

function! Trim()
	let pos = getpos('.')
	%s/\s*$//
	call setpos('.', pos)
endfunction

command! Trim call Trim()
