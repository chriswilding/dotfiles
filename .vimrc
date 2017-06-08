color dracula

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

inoremap jk <esc>

let NERDTreeShowHidden = 1
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_max_line_indicator = 'line'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_fmt_fail_silently = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let mapleader=','

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

set autoindent
set autoread
set background=dark
set clipboard=unnamed
set complete+=k
set completeopt-=preview
set cursorline
set diffopt=vertical
set directory=/tmp//
set encoding=utf-8
set gdefault
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
set rtp+=/usr/local/opt/fzf
set scrolloff=5
set shortmess+=I
set showmatch
set smartcase
set spell spelllang=en_gb
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
set termguicolors
set ttyfast
set ttymouse=xterm2
set undodir=/tmp//
set undofile

vnoremap / /\v

if exists('$TMUX')
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
else
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
endif

function! FormatJSON()
	execute "%!" . "jq ."
endfunction

command! FormatJSON call FormatJSON()

function! Trim()
	let pos = getpos(".")
	%s/\s*$//
	call setpos('.', pos)
endfunction

command! Trim call Trim()
