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

let bytedance = copy(base)
let bytedance.name = 'Bytedance'
let bytedance.path = '$HOME/mywiki/bytedance/'
let bytedance.path_html = '$HOME/mywiki/htmls/bytedance/'

let g:vimwiki_list = [unsorted, bytedance]

let g:vimwiki_hl_headers=1
let g:vimwiki_listsyms = '✗○◐●✓'
let g:vimwiki_global_ext = 0
let g:vimwiki_hl_cb_checked = 1
