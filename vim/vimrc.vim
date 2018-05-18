"引入Vundle插件管理器配置
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"引入功能性插件
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/vader.vim'
Plugin 'janko-m/vim-test'

Plugin 'Shougo/neocomplete.vim'             " neocomplete使用lua，不会和Anaconda产生冲突
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'

Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/vimproc.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ConradIrwin/vim-bracketed-paste'    " 自动set paste
Plugin 'DingDean/vim-digitme'

"语言相关插件 ->

"Stylus
Plugin 'wavded/vim-stylus'                  "stylus语法高亮

"Javascript
Plugin 'pangloss/vim-javascript'            "JS Syntax Support
Plugin 'mxw/vim-jsx'                        "Better Js Syntax Support
Plugin 'heavenshell/vim-jsdoc'              "函数注释
Plugin 'posva/vim-vue'
Plugin 'ternjs/tern_for_vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'othree/html5.vim'

"Python
Plugin 'hdima/python-syntax'
Plugin 'Vimjas/vim-python-pep8-indent'

"Haskell
Plugin 'bitc/vim-hdevtools'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'alx741/vim-hindent'                  " Auto Indentation For Haskell

" C++
"Plugin 'octol/vim-cpp-enhanced-highlight'

" glsl
Plugin 'tikhomirov/vim-glsl'

"LaTex
"Plugin 'lervag/vimtex'                      " 在vim中编译和纠错LaTex文件
"Plugin 'xuhdev/vim-latex-live-preview'      " 实时预览LaTex结果

"Go
Plugin 'fatih/vim-go'                       " Go Development in Vim
Plugin 'nsf/gocode'                         " Go Autocompletion

"Proto
Plugin 'uarun/vim-protobuf'

"微信小程序
Plugin 'chemzqm/wxapp.vim'

call vundle#end()
filetype plugin indent on

"Vim变量配置 ->

set relativenumber
set number
set showmode
set smartcase

set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smarttab

set autoindent
set smartindent

set hls

set nobackup
set nowritebackup
set history=50
set ruler
set showcmd
set incsearch

set lazyredraw
set showmatch

inoremap jk <esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ea :vsplit ~/myConfigureFiles/vim/abbrev.vim<cr>
nnoremap <leader>ep :vsplit ~/myConfigureFiles/vim/plugins.vim<cr>
nnoremap <leader>to :TagbarOpen<cr>
nnoremap <leader>tc :TagbarClose<cr>
nnoremap <c-n> :NERDTreeToggle<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-=> <c-w>+
nnoremap ; :

" 自动纠错
source $HOME/myConfigureFiles/vim/abbrev.vim
source $HOME/myConfigureFiles/vim/plugins.vim
