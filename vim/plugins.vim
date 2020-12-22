" previm
let g:previm_open_cmd = "open -a 'firefox developer edition'"
"" limelight
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
let g:limelight_paragraph_span = 5

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
      \{'path': '$HOME/.my_wikis/tuya/', 'auto_toc': 1, 'auto_tags': 1},
      \{'path': '$HOME/.my_wikis/personal/', 'auto_toc': 1, 'auto_tags': 1},
      \]
let g:vimwiki_hl_headers=1
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_global_ext = 0

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

"fzf
nnoremap <silent> <C-p> :Files<cr>

" " ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
"   set grepprg=rg\ --vimgrep
"   command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif
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

" vim-vue
let g:vue_disable_pre_processors=1

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

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" presenting.vim
au FileType vimwiki let b:presenting_slide_separator = '\v(^|\n)\~{4,}'
