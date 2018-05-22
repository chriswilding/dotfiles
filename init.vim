call plug#begin('~/.local/share/nvim/plug')
Plug 'airblade/vim-gitgutter'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-mix-format'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': [ 'javascript', 'json' ] }
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeFind', 'NERDTreeToggle'] }
Plug 'sheerun/vim-polyglot'
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

augroup Highlight
  autocmd!

  autocmd ColorScheme * highlight link xmlEndTag xmlTag
augroup END

augroup JavaScript
  autocmd!

  autocmd FileType javascript nnoremap <silent> <f2> :call languageclient#textdocument_rename()<cr>
  autocmd FileType javascript nnoremap <silent> K :call languageclient#textdocument_hover()<cr>
  autocmd FileType javascript nnoremap <silent> gd :call languageclient#textdocument_definition()<cr>
augroup END

augroup Netrw
  autocmd!

  autocmd BufWinEnter * if &filetype != 'netrw' | set bufhidden=hide | endif
augroup END


colorscheme nova

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
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'javascript.jsx': ['javascript-typescript-stdio'],
  \ }
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='hybrid'
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'] }
let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:deoplete#enable_at_startup = 1
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1
let g:polyglot_disabled = ['elixir', 'html', 'javascript', 'javascript.jsx', 'scss']
let mapleader = ','

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <leader>b :Buffers<CR>
map <leader>j p<Esc>gg:s/\n/_/f_gu$:s/\s+$//e:s/\s/-/g<Esc>
map <leader>n :NERDTreeFind<CR>
map <leader>p :Buffers<CR>
map Q gq

nnoremap / /\v
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <leader>fn :let @+ = expand("%:t")<CR>
nnoremap <leader>fp :let @+ = expand("%")<CR>
nnoremap Y y$
nnoremap j gj
nnoremap k gk

set background=dark
set clipboard+=unnamedplus
set complete+=k
set completeopt-=preview
set cursorline
set diffopt=vertical
set directory=/tmp//
set foldlevelstart=10
set foldmethod=syntax
set guioptions=M
set hlsearch
set ignorecase
set inccommand=split
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
set updatetime=100
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildmode=list:longest,list:full

vnoremap / /\v

vmap < <gv
vmap > >gv

function! CloseOthers() abort
  let buffer = bufnr('%')
  let last_buffer = bufnr('$')

  let n = 1
  while n <= last_buffer
    if n != buffer && buflisted(n)
      silent execute 'bdelete ' . n
    endif
    let n = n+1
  endwhile
endfunction

command! CloseOthers :call CloseOthers()

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
