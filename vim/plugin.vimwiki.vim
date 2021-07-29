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

let unsorted = copy(base)
let unsorted.name = 'unsorted'
let unsorted.path = '$HOME/mywiki/unsorted/'
let unsorted.path_html = '$HOME/mywiki/htmls/unsorted/'

let compilers = copy(base)
let compilers.name = 'Compiler'
let compilers.path = '$HOME/mywiki/compiler/'
let compilers.path_html = '$HOME/mywiki/htmls/compiler/'

let gamedev = copy(base)
let gamedev.name = 'GameDev'
let gamedev.path = '$HOME/mywiki/gamedev/'
let gamedev.path_html = '$HOME/mywiki/htmls/gamedev/'

let g:vimwiki_list = [unsorted, compilers, gamedev]

let g:vimwiki_hl_headers=1
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_global_ext = 0
let g:vimwiki_hl_cb_checked = 1
