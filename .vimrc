set nocompatible
filetype off

""""""""""""""""
"
" Vundle
"
""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle "mileszs/ack.vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"
Bundle "tpope/vim-haml"
Bundle "michaeljsmith/vim-indent-object"
Bundle "pangloss/vim-javascript"
Bundle "wycats/nerdtree"
Bundle "ddollar/nerdcommenter"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-vividchalk"
Bundle "altercation/vim-colors-solarized"
Bundle "ervandew/supertab"
Bundle "tpope/vim-cucumber"
Bundle "timcharper/textile.vim"
Bundle "tpope/vim-rails"
Bundle "taq/vim-rspec"
Bundle "msanders/snipmate.vim"
Bundle "tpope/vim-markdown"
Bundle "tsaleh/vim-align"
Bundle "tpope/vim-unimpaired"
Bundle "tpope/vim-endwise"
Bundle "wgibbs/vim-irblack"
Bundle "kchmck/vim-coffee-script"
Bundle "scrooloose/syntastic"
Bundle "ajf/puppet-vim"
Bundle "bdd/vim-scala"
Bundle "mattn/gist-vim"
Bundle "sjl/gundo.vim"
Bundle "vim-ruby/vim-ruby"
Bundle "tpope/vim-bundler"
Bundle "tpope/vim-rvm"
Bundle "bbommarito/vim-slim"
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mattn/zencoding-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'wavded/vim-stylus'
Bundle 'juvenn/mustache.vim'
Bundle 'bry4n/vwilight.vim'
Bundle "sickill/vim-pasta"
Bundle "Lokaltog/vim-powerline"
Bundle "kien/ctrlp.vim"
Bundle "cloudhead/shady.vim"
Bundle "nanotech/jellybeans.vim"
Bundle "sunaku/vim-ruby-minitest"

Bundle "Color-Sampler-Pack"
Bundle "taglist.vim"
Bundle "ZoomWin"
Bundle "searchfold.vim"
Bundle "Conque-Shell"
Bundle 'molokai'

filetype plugin indent on


""""""""""""""""""""""
"
" Vim Configuration
"
""""""""""""""""""""""

set number
set ruler
syntax on
set encoding=utf-8
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

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript

" color scheme
colorscheme desert
set background=dark

""""""""""""""""""""""""""
"
" Vim Plugins
"
""""""""""""""""""""""""""

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Bundler
map <Leader>bi :Bundle install<CR><CR>
map <Leader>bu :Bundle update<CR><CR>

" Fugitive
map <Leader>gb :Gblame<CR><CR>
map <Leader>gs :Gstatus<CR><CR>
map <Leader>gc :Gcommit <CR><CR>
map <Leader>gh :Gbrowse<CR><CR>

" Taglist
map <Leader>tl :TlistToggle<CR><CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<<CR>

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" vim-pasta
let g:pasta_disabled_filetypes = ['python', 'coffee', 'yaml']
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'sh']

""""""""""""""""""""""""""
"
" Custom Configuration
"
""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
