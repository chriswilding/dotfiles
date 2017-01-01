augroup config
	autocmd!
	autocmd InsertEnter * set norelativenumber
	autocmd InsertLeave * set relativenumber
augroup END

autocmd Filetype css setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype cucumber setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype elixir setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype erlang setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype gitcommit setlocal spell spelllang=en_gb
autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype javascript setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype mail setlocal spell spelllang=en_gb
autocmd Filetype markdown setlocal spell spelllang=en_gb
autocmd Filetype python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType ruby compiler ruby
autocmd Filetype ruby,eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype scss setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype tex setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2 textwidth=80
autocmd Filetype tex setlocal spell spelllang=en_gb
autocmd Filetype text setlocal spell spelllang=en_gb
autocmd Filetype yaml setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

color dracula

command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
command! -nargs=* -bar -bang -count=0 -complete=dir E Explore <args>

inoremap jk <esc>

let NERDTreeShowHidden = 1
let g:EditorConfig_core_mode = "external_command"
let g:EditorConfig_max_line_indicator = "line"
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore .git -g ""'
let g:ctrlp_working_path_mode = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let mapleader = ","

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>
map <leader>n :NERDTreeFind<CR>
map Q gq

nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap Y y$
nnoremap j gj
nnoremap k gk

set background=dark
set clipboard=unnamed
set colorcolumn=80,120
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
set modelines=0
set mouse=a
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set relativenumber
set rtp+=/usr/local/opt/fzf
set scrolloff=5
set showcmd
set showmatch
set smartcase
set spellfile=$HOME/Development/dotfiles/spellfile.utf-8.add
set termguicolors
set ttymouse=xterm2

if exists('$TMUX')
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
else
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
endif

function! FormatJSON()
	execute "%!" . "python -m json.tool"
endfunction

command! FormatJSON call FormatJSON()

function! TrimWhitespace()
	let pos = getpos(".")
	%s/\s*$//
	call setpos('.', pos)
endfunction

command! TrimWhitespace call TrimWhitespace()
