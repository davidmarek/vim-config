" Vim config
" David Marek

set nocompatible	" Nekompatibilni s vi

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

syntax on
set hlsearch

set t_Co=256
colorscheme molokai

if &t_Co > 2 && has("gui_running")
    syntax on
    set runtimepath+=,~/vim
    set guifont=DeJavu\ Sans\ Mono\ for\ Powerline\ 9
    "set guifont=Consolas\ for\ Powerline\ 9

endif

set laststatus=2
set encoding=utf-8
set autowrite
set backup
set confirm
set viminfo='50,\"500
set history=50
set tabstop=4
set incsearch
set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full
set virtualedit=all
set number

set display=lastline
set guioptions=agirbem
set ruler
set showmatch
set showcmd
set title
set titlestring=%t
set mousemodel=popup
set scrolloff=5


set autoindent
set cindent
set expandtab
set smarttab
set backspace=indent,eol,start
set nojoinspaces
set shiftwidth=4
set softtabstop=4
set shiftround
set nowrap
set listchars=tab:\ \ ,trail:-
set textwidth=0

map <S-Up> <Up>
map <S-Down> <Down>
map <C-Left> <b>
map <C-Right> <w>

highlight ExtraWhitespace ctermbg=black guibg=#1E0010
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

map <leader>td <Plug>TaskList
map <leader>n :NERDTreeToggle<CR>

imap <C-BS> <C-W>

":au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
:au BufWinEnter * let w:m2=matchadd('Error', '\%>80v.\+', -1)

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command! -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>

let g:Powerline_symbols = 'fancy'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

