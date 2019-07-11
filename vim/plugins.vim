" limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 2

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\S'
" let g:limelight_eop = '^\s'
let g:limelight_eop = '\ze\n'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" coc
"" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Tab completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 2 " 在tags窗口左边展示相对行数
let g:tagbar_type_elm = {
          \   'ctagstype':'elm'
          \ , 'kinds':['h:header', 'i:import', 't:type', 'f:function', 'e:exposing']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{ 'h':'header', 'i':'import'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/myConfigureFiles/elmtags.py'
          \ , 'ctagsargs': ''
          \ }

" Vimwiki
let g:vimwiki_list = [
      \{'path': '$HOME/.my_wikis/tuya/', 'auto_toc': 1},
      \{'path': '$HOME/.my_wikis/personal/', 'auto_toc': 1},
      \{'path': '$HOME/.my_wikis/100ML/', 'auto_toc': 1},
      \]


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

"fzf
nnoremap <silent> <C-p> :FZF<cr>

" light-line
let g:lightline = {
      \   'colorscheme': 'nord',
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
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'cpp': [],
      \ }
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['eslint'], 'vue': ['prettier']}
let g:ale_lint_on_text_changed = 'never'

" hdevtools
" let g:hdevtools_stack = 1
" LanguageClient-neovim
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
" map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
" map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
" map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
" map <Leader>lb :call LanguageClient#textDocument_references()<CR>
" map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
" map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR>

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" dash
let g:dash_activate = 0

" presenting.vim
au FileType vimwiki let b:presenting_slide_separator = '\v(^|\n)\~{4,}'

" indentLine
" let g:indentLine_conceallevel = 0

" deoplete
let g:deoplete#enable_at_startup = 1

