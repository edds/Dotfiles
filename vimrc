" My vim.rc file

" Pathogen
call pathogen#infect()

" enable syntax highlighting and set up some tab rules
syntax enable
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set shiftround
filetype plugin indent on

" Line numbers in the column please
set number

" Terminal.app mainly ignores this but it makes everything pretty
let g:molokai_original = 1
set t_Co=256
colorscheme molokai

" Highligh search results
set hlsearch
set incsearch
set ignorecase

" always show me my ruler
set ruler
set laststatus=2

" context makes me happy.
set scrolloff=7

" matching brackets highlighting
set showmatch
set cursorline

" show invisibles so i can delete tabs and stick to spaces
set list

" Show a gutter at 80 chars
if exists('+colorcolumn')
  "set textwidth=79
  "set formatoptions=cq
  set colorcolumn=80
end

" Delete trailing whitespace
autocmd BufWritePre * :%s/\(\S\)\s\+$/\1/e

" make navigating tabs like navigating window splits
noremap <C-t>k :tabr<CR>
noremap <C-t>j :tabl<CR>
noremap <C-t>h :tabp<CR>
noremap <C-t>l :tabn<CR>

" map nerd commenter to something useful
"let g:NERDSpaceDelims = 1
"map <Leader>/ <plug>NERDCommenterSexy

" code fold by indents but don't do it on file open
set foldmethod=indent
set nofoldenable

" enable backspacing to the begining
set backspace=indent,eol,start

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = { 'dir': '\.git$\|log$\|tmp$\|node_modules$\|_build$' }

" ensure new lines at the end of files
set eol

" md files are markdown files
autocmd BufRead,BufNewFile *.md set filetype=markdown

au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir


" use the silver searcher in ackvim
let g:ackprg = 'ag --nopager --vimgrep'

" turn on spell checking for some file types
autocmd FileType gitcommit,text,markdown setlocal spell

let g:ale_lint_delay = 500
let g:ale_cache_executable_check_failures = 1
let g:ale_lint_on_text_changed = "insert"
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'javascript': ['eslint', 'prettier'], 'scss': ['prettier'], 'elixir':['mix_format'], 'eelixir':['mix_format']}
let g:ale_linters = {'javascript': ['eslint'], 'elixir':['elixir-ls','credo']}
let g:ale_elixir_elixir_ls_release = $HOME . '/Projects/elixir-ls/rel'
let g:ale_elixir_elixir_ls_config = { 'elixirLS': { 'dialyzerEnabled': v:false } }
let g:ale_completion_enabled = 1


