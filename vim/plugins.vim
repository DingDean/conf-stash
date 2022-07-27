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

" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips",
      \$HOME."/myConfigureFiles/vim/vimSnippets"]

" vim_jsx
let g:jsx_ext_required = 0

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

" CPP
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

" Go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
