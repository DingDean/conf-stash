" Vimwiki
"" base vimwiki option
let base = {
      \'auto_toc': 1,
      \'auto_tags': 1,
      \'links_spaced_char': '_',
      \'auto_generate_tags': 1,
      \'ext': 'md',
      \'syntax': 'markdown',
      \}

let compiler = base
let compiler.name = 'Compiler'
let compiler.path = '$HOME/mywiki/compiler/'
let compiler.path_html = '$HOME/mywiki/htmls/compiler/'

let gamedev = base
let gamedev.name = 'GameDev'
let gamedev.path = '$HOME/mywiki/gamedev/'
let gamedev.path_html = '$HOME/mywiki/htmls/gamedev/'


let g:vimwiki_list = [compiler, gamedev]

let g:vimwiki_hl_headers=1
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_global_ext = 0
let g:vimwiki_hl_cb_checked = 1
