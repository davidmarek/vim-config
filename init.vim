call plug#begin('~/.config/nvim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tomasr/molokai'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-fugitive'
" call PlugInstall to install new plugins
call plug#end()

" basics
filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set scrolloff=10
set clipboard=unnamedplus

" preferences
inoremap jk <ESC>
vnoremap jk <ESC>
let mapleader = "<Space>"
set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap z <c-r>
" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$
" navigate split screens easily
nmap <silent> <Leader>wk :wincmd k<CR>
nmap <silent> <Leader>wj :wincmd j<CR>
nmap <silent> <Leader>wh :wincmd h<CR>
nmap <silent> <Leader>wl :wincmd l<CR>
" change spacing for language specific
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=light
colorscheme PaperColor

"NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
map nnn :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" jsx
let g:jsx_ext_required = 0

" ale prettier-eslint
"let g:ale_fixers = {
"\   'javascript': ['prettier_eslint'],
"\}
"let g:ale_fix_on_save = 1
"let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
"let g:ale_javascript_prettier_eslint_use_global = 1
