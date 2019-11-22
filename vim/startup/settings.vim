"General Settings
let mapleader=","

set nocompatible
let g:platform = GetPlatform()

"" encoding
scriptencoding utf-8
set encoding=utf-8

syntax on

"" moving around, searching and patterns
set whichwrap+=<,>,[,]
set nostartofline
if exists("+autochdir")
  set autochdir
endif
set wrapscan
set incsearch
set hlsearch

set ignorecase
set smartcase

"" displaying text
set scrolloff=1
set nowrap
set lazyredraw
set list
set listchars=tab:>-,trail:-
set number

"" multiple windows
set equalalways
set winheight=3
set winminheight=0
set splitbelow
set splitright

"" multiple tab pages
set showtabline=1

"" terminal
if g:platform != "AIX" && g:platform != "Windows"
  set term=$TERM
endif

"" using the mouse
"" shift+mosue can copy from vim
set mouse=a

"" messages and info
set shortmess=aoOstTI
set showcmd
set showmode
set ruler
set cursorline
set report=0
set noerrorbells
set novisualbell t_vb=".

"" editing text
fixdel
"set textwidth=79
set backspace=indent,eol,start
set showmatch

"" tabs and indenting
set tabstop=8
set shiftwidth=4
set smarttab
set softtabstop=4
set shiftround
set expandtab
set autoindent
set smartindent
set cinoptions=:0.5s,=0.5s,l1,g0.5s,h0.5s,t0,i0,(0
"              |     |     |  |     |     |  |  +-- indent from unclosed parens
"              |     |     |  |     |     |  +-- C++ base class decls and initializations
"              |     |     |  |     |     +-- indent function return type at margin
"              |     |     |  |     +-- places statements after C++ scope decls
"              |     |     |  +--  place C++ scope declarations
"              |     |     +-- align with case label instead of statement
"              |     +-- place statements after case label
"              +-- placement of case after switch statement
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case
"
"" folding
"set nofoldenable
set foldmarker={,}
"set foldmethod=syntax " commented out due to slowness in large files
set foldlevel=20
"set foldopen+=jump
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

"" reading and writing files
set modeline
set fileformats=unix,mac,dos
set backup
set backupdir=~/.vim/backup
set autowrite
set autoread

"" the swap file
set directory=.,~/.vim/tmp

"" command line editing
set history=100
set wildmode=list:longest,full
set wildmenu
set wildignore=*/tmp/*,*.swp,*.o,*.gch,*.pyc,*.jpg,*.gif,*.png,*.a,*.so,*.zip
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undo
endif

"" status line
"set fillchars+=stl:\ ,stlnc:\
set laststatus=2

"" various
set noexrc
set secure
set gdefault

"" set to use new tab
set switchbuf+=usetab,newtab

"" TIPS
"" - use "*y to copy to system clipboard, which is *
