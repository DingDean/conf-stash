" Autocommands For tex Filetype 
autocmd Filetype tex nnoremap <leader>r <esc>:w<esc>:! pdflatex %; open %:r.pdf<CR>
autocmd FileType tex inoremap .a <esc>o\begin{align*}<esc>o\end{align*}<esc>O
autocmd FileType tex inoremap .m <esc>o\begin{pmatrix}<cr>\end{pmatrix}<esc>O
autocmd FileType tex inoremap .c <esc>o\begin{adjustwidth}{1cm}{1cm}<esc>o\end{adjustwidth}<esc>O
autocmd FileType tex inoremap .e $$<esc>i
autocmd FileType tex inoremap .s _{}<esc>i
autocmd FileType tex inoremap .r ^{}<esc>i
