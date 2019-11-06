"filetype off
set rtp+=~/.fzf

" check https://vimawesome.com/ for popular plugins
call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'                                        " Asynchronized Syntax checking
Plug 'junegunn/fzf.vim'                                " Fuzzy search
Plug 'benmills/vimux'                                  " vim and tmux integration
Plug 'tpope/vim-fugitive'                              " Fugitive Git Wrapper
Plug 'christoomey/vim-tmux-navigator'                  " Tmux movement mappings
Plug 'majutsushi/tagbar'                               " Easy Ctag explorer
Plug 'ludovicchabant/vim-gutentags'                    " tag file manager
Plug 'mhinz/vim-grepper'                               " vim/git-grep integration
Plug 'airblade/vim-gitgutter'                          " Diff signs in gutter for Git index/working diffs
Plug 'Valloric/ListToggle'                             " ListToggle for display of quickfix/location list
Plug 'godlygeek/tabular'                               " to align by a char
Plug 'endel/vim-github-colorscheme'                    " github color schemes
Plug 'flazz/vim-colorschemes'                          " vim color schemes
Plug 'vim-scripts/a.vim', { 'for': 'cpp' }             " Alternate for C/C++ Header/Source navigation
Plug 'vim-scripts/DoxygenToolkit.vim'                  " Doxygen comments
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }        " scala plugin
Plug 'tell-k/vim-autopep8', { 'for': 'python' }        " Python formatter
Plug 'rhysd/vim-clang-format', { 'on': 'ClangFormat' } " Clang format for C/C++/ObjC
Plug 'luochen1990/rainbow'                             " Rainbow parenthesis coloring
Plug 'scrooloose/nerdcommenter'                        " NERDCommenter for easy commenting
Plug 'tpope/vim-surround'                              " generate surroundings
Plug 'machakann/vim-highlightedyank'                   " highlighted the yanked region
Plug 'Yggdroot/indentLine'                             " indentline
Plug 'tpope/vim-vinegar'                               " netrw improvement
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'beanworks/vim-phpfmt'
Plug 'vim-airline/vim-airline'                         " Airline for pretty status/tab lines
Plug 'vim-airline/vim-airline-themes'                  " airline themes


" Linux-Only plug-ins
"if g:platform == "Linux" || g:platform == "Darwin"
    "Plug 'Valloric/YouCompleteMe'     " Autocompletion and semantic completion
    "Plug 'asenac/vim-airline-loclist' " Show Location list output in airline
    "Plug 'edkolev/tmuxline.vim'       " Nice airline-like tmux prompt
"endif

call plug#end()
"filetype plugin indent on

"  vim-airline
" More themes here (last used 'base16_pop'):
"   https://github.com/vim-airline/vim-airline-themes/blob/master/doc/airline-themes.txt
let g:airline_theme='base16_pop'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#loclist#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1 " git gutter

"  tmuxline config and help
    " tmuxline command help
    " step 1) set the theme
    " :Tmuxline [themem] [preset]
    " step 2) generate scripts which can run in tmux.conf
    ":TmuxlineSnapshot tmux_prompt.sh
    "
let g:tmuxline_powerline_separators = 0
let g:tmuxline_theme = 'jellybeans'
let g:tmuxline_separators = {
    \ 'left': '',
    \ 'left_alt': '>',
    \ 'right': '',
    \ 'right_alt': '<',
    \ 'space' : ' '}
let g:tmuxline_preset = {
    \ 'a'    :   '#[fg=colour231,bg=colour28] #S #[fg=colour22,bg=colour233,nobold,nounderscore,noitalics]',
    \ 'cwin' :   '#[fg=colour39,bg=colour235] #I> #[fg=colour39,bg=colour235,nobold,noitalics] #W ',
    \ 'win'  :   '#[fg=colour231,bg=colour233] #I> #[fg=colour231,bg=colour233,nobold,noitalics] #W ',
    \ 'x'    :   '#[fg=colour39,bg=colour235,nobold,nounderscore,noitalics] %a %H:%M %Y-%m-%d',
    \ 'y'    :   '#[fg=colour210,bg=colour231, italics] |#H|'}

"  vimux config and help
let g:VimuxOrientation = "h"
let g:VimuxHeight = "30"

let g:rainbow_active = 1

"  gitgutter update time set to 500ms
set updatetime=500
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 1000

" vim-clang-format
let g:clang_format#detect_style_file = 1
let g:clang_format#auto_formatexpr = 1
autocmd FileType c,cpp,objc setlocal textwidth=0
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

let g:autopep8_disable_show_diff=0
autocmd FileType python nnoremap <buffer><Leader>cf :<C-u>Autopep8<CR>
autocmd FileType python vnoremap <buffer><Leader>cf :Autopep8<CR>
autocmd FileType python set equalprg=autopep8\ -

" rather than usign vim-clang-format, can also use clang-format.py
"autocmd FileType python nnoremap <buffer><Leader>cf :<C-u>:pyf ~/bin/clang-format.py<CR>
"autocmd FileType python inoremap <Leader>cf <ESC>:pyf ~/bin/clang-format.py<CR>

" php formatter
let g:phpfmt_standard = 'PSR2'
let g:phpfmt_autosave = 0
autocmd FileType php nnoremap <buffer><Leader>cf :<C-u>PhpFmt<CR>
autocmd FileType pph vnoremap <buffer><Leader>cf :PhpFmt<CR>

"  doxygen
let g:DoxygenToolkit_authorName="Stanley Li <stanleyli0602@gmail.com>"

"  ale
let g:ale_linters = {
\    'cpp'    : ['cppcheck'],
\    'java'   : ['checkstyle'],
\    'python' : ['pylint'],
\    'sh'     : ['shellcheck'],
\    'yaml'   : ['yamllint'],
\    'php'    : ['phpstan'],
\}

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '!!'
let g:ale_sign_column_always = 1
nmap <silent> <leader>en <Plug>(ale_previous_wrap)
nmap <silent> <leader>ep <Plug>(ale_next_wrap)

"  youcompleteme config and help
"let g:ycm_server_log_level = 'debug'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_default_conf.py'
let g:ycm_show_diagnostics_ui = 0  " this ensures that syntastic gcc checker can be used

"  snippets config and help
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" highlighted yanked region configuration
"let g:highlightedyank_highlight_duration = 1
if !has('nvim')
    map y <Plug>(highlightedyank)
endif

" vim-grepper config
"  open: open the quickfix window
"  switch: when the quickfix window opens, swith to it
"  jump: jump to the first match
let g:grepper = {
    \ 'tools': ['git', 'grep'],
    \ 'open': 1,
    \ 'switch': 1,
    \ 'jump': 1,
    \ }

"   indentline
let g:indentLine_enabled = 0
let g:indentLine_conceallevel = 10
let g:indentLine_char = '|'
let g:indentLine_first_char = '¦'
let g:indentLine_showFirstIndentLevel=1

" gutentas
set tags=./.tags;,.tags
set statusline+=%{gutentags#statusline()}}
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.git', '.hg', '.root']
let g:gutentags_ctags_tagfile = '.tags'
"let g:gutentags_cache_dir = ".git"
"let g:gutentags_file_list_command = {
        "\ 'markers': {
            "\ '.git': 'git ls-files',
            "\ '.hg': 'hg files',
        "\ },
"\ }

" markdown preview
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_hotkey='<C-m>'
