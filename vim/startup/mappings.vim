"Vim Key Mappings

"" ============================================================================
""                           Insert Mode Mappings
"" ============================================================================
" Auto-Insertion for closing braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Map jk to ESC for easy hand-positioning
inoremap jk <esc>

" Map SPACE to za toggle folding
nnoremap <space> za
" Visual Search
vnoremap // y/<C-R>"<CR>

" Paste with shift+ins
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"" ============================================================================
""                           F-Keys Mapping
"" ============================================================================

" Toggle paste mode
set pastetoggle=<F2>

" toggle hlsearch
nmap <silent> <F3> :set nohlsearch!<CR>
imap <silent> <F3> <c-o>:set nohlsearch!<CR>

" Toggle Syintax Highlighting
nnoremap <F4> :call ToggleSyntax()<CR>

" Switch between conventional/relative numbering
nnoremap <F5> :CtrlPClearCache<CR>

" Expand Tab Toggle
nn <F6> :set expandtab!<CR>

" Toggle TabBar
nnoremap <F8> :TagbarToggle<CR>

" Toggle Gitgutter
nnoremap <F9> :GitGutterToggle<CR>
nnoremap <leader>hn :GitGutterNextHunk<CR>
nnoremap <leader>hp :GitGutterPrevHunk<CR>

" Bael log category at the start of function
inoremap <F10> <ESC>[[oBAEL_LOG_SET_CATEGORY(LOG_CATEGORY);<ESC><C-o>

" YouCompleteMe mappings
nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Vimux mapping
nnoremap <Leader>rr :w<CR>:call VimuxRunCommand("./" . bufname("%"))<CR>
nnoremap <Leader>vl :w<CR>:call VimuxRunCommand('(load "' . bufname("%") . '")')<CR>
nnoremap <Leader>vr :w<CR>:VimuxRunLastCommand<CR>
nnoremap <Leader>vv :w<CR>:VimuxPromptCommand<CR>
nnoremap <Leader>vx :VimuxInterruptRunner<CR>

" vim-grepper mapping
nnoremap <Leader>gg :call CdRoot()<CR>:GrepperGit 

"ctrlp mapping (ctrlT will open in a new tab)
nnoremap <leader>fp :CtrlP<CR>

" fzf to search from git repo root
command! FzfFromRoot execute 'Files' FindGitRoot()
nnoremap <leader>ff :FzfFromRoot<CR>

" Tab handling shortcuts
" xterm does not work, since only send out Tab key (terminal issue)
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>

" tags jum
nnoremap <leader>jd <C-W>]
nnoremap <leader>jt :tab split<CR><C-]>
nnoremap <leader>jb <C-O>
nnoremap <leader>tb :TagbarToggle<CR>

" Open and source .vimrc and startup scripts
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>em :vsplit ~/.vim/startup/mappings.vim<CR>
nnoremap <leader>es :vsplit ~/.vim/startup/settings.vim<CR>
nnoremap <leader>ep :vsplit ~/.vim/startup/plugins.vim<CR>
nnoremap <leader>sv :source ~/.vim/vimrc<CR>
nnoremap <leader>sm :source ~/.vim/startup/mappings.vim<CR>
nnoremap <leader>sp :source ~/.vim/startup/plugins.vim<CR>
nnoremap <leader>ss :source ~/.vim/startup/settings.vim<CR>

"Nerd Tree
nnoremap <leader>nt :NERDTreeToggle<CR>
" Open Nerdtree in new tab
nnoremap <Leader>h :tabnew %:h<CR>
nnoremap <Leader>w :call StripTabsAndTrailingWhitespaces()<CR>:w<CR>

"Kill the arrow keys to force practice with hjkl
"no <up> <Nop>
"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"ino <up> <Nop>
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
