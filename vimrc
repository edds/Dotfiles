" My vim.rc file

" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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
