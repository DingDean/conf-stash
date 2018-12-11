" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 2 " 在tags窗口左边展示相对行数

" Vimwiki
let g:vimwiki_list = [
      \{'path': '$HOME/Documents/Personal/my_wikis/', 'syntax': 'markdown', 'ext': '.md', 'index': 'index'}
      \]

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ neocomplete#start_manual_complete()
function! s:check_back_space() "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" NerdTree
let NERDTreeShowLineNumbers = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd Filetype nerdtree setlocal relativenumber

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips",
      \$HOME."/myConfigureFiles/vim/vimSnippets"]

" vim_jsx
let g:jsx_ext_required = 0

" JsDoc
let g:jsdoc_input_description = 1 "prompt for a function description
let g:jsdoc_allow_input_prompt = 1 "prompt for an input

" vim-tmux-navigator
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

"fzf
nnoremap <silent> <C-p> :FZF<cr>

" light-line
let g:lightline = {
      \   'colorscheme': 'Tomorrow_Night',
      \   'active': {
      \     'left': [ ['mode', 'paste'], 
      \              ['gitbranch', 'readonly', 'filename', 'modified'] ],
      \     'right': [ ['linter_errors', 'linter_warnings'],
      \                [ 'lineinfo' ],
      \                ['percent'],
      \                ], 
      \   },
      \   'component_function': {
      \     'gitbranch': 'fugitive#head',
      \   },
      \   'subseparator': {'left': '|', 'right': '|'},
      \}

let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            ['tomato', 'percent' ] ] }

let g:lightline.component_expand = {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \ }
let g:lightline.component_type = {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \ }

" ghc-mod
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" vim-vue
let g:vue_disable_pre_processors=1

" haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:haskellmode_completion_ghc = 0
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" Hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsInfo<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsClear<CR>


" hindent
let g:hindent_indent_size = 2
let g:hindent_line_length = 80

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim instant markdown
let g:instant_markdown_autostart = 0

" tern_for_vim
let g:tern_map_keys = 1

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_lint_on_text_changed = 'never'

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
