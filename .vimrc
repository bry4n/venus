set nocompatible
filetype off

" Install vim-plug if we don't arlready have it
if empty(glob("~/.vim/autoload/plug.vim"))
  " Ensure all needed directories exist  (Thanks @kapadiamush)
  execute 'mkdir -p ~/.vim/plugged'
  execute 'mkdir -p ~/.vim/autoload'
  " Download the actual plugin manager
  execute '!curl -fLo ~/.vim/autoload/plug.vim
  https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
"Plug 'flazz/vim-colorschemes'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'
Plug 'bry4n/vwilight.vim'
Plug 'cloudhead/shady.vim'
Plug 'wgibbs/vim-irblack'

" Syntax
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'hdima/python-syntax', { 'for': 'python' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'fatih/vim-go'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'vim-scripts/pythonhelper'

" User Interface
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'

 Integrations
Plug 'scrooloose/syntastic', { 'for': ['php', 'python', 'javascript', 'css'] }
Plug 'vim-scripts/matchit.zip'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-abolish'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'sickill/vim-pasta'



filetype plugin indent on
call plug#end()

""""""""""""""""""""""
"
" Vim Configuration
"
""""""""""""""""""""""

set number
set ruler
syntax on
set encoding=utf8
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set noequalalways
set backspace=indent,eol,start
set modeline
set modelines=10
set showcmd
set mouse=a
set nobackup
set noswapfile

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Capfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufReadPost *.md set filetype=markdown
au BufNewFile,BufRead *.py set filetype=python

" color scheme
colorscheme desert
set background=dark

""""""""""""""""""""""""""
"
" Plugin Settings
"
""""""""""""""""""""""""""

" GitGutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Tagbar
nmap <Leader>tb :TagbarToggle<CR>

" Ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.jpg,*.gif,*.png
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Fugitive
map <Leader>gb :Gblame<CR><CR>
map <Leader>gs :Gstatus<CR><CR>
map <Leader>gc :Gcommit <CR><CR>
map <Leader>gh :Gbrowse<CR><CR>

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" vim-pasta
let g:pasta_disabled_filetypes = ['coffee', 'yaml']
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'sh', 'python']

""""""""""""""""""""""""""
"
" Custom Configuration
"
""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
