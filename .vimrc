" Vim config
" David Marek

set nocompatible	" Nekompatibilni s vi
filetype plugin indent on

syntax on
set hlsearch

set t_Co=256
colorscheme wombat256mod

if &t_Co > 2 && has("gui_running")
    syntax on
    set runtimepath+=,~/vim
    set guifont=DeJavu\ Sans\ Mono\ 9
    "  set guifont=Monaco\ 8
    "
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter *  :IndentGuidesEnable
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#282828 ctermbg=3
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#242424 ctermbg=4

endif

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

map <S-Up> <Up>
map <S-Down> <Down>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
