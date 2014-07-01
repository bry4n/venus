set nocompatible
filetype off

""""""""""""""""
"
" Vundle
"
""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'gmarik/Vundle.vim'

Bundle "tpope/vim-fugitive"
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-surround"
Bundle "kien/ctrlp.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "scrooloose/nerdcommenter"
Bundle "tpope/vim-rails"
Bundle "mileszs/ack.vim"
Bundle "majutsushi/tagbar"
Bundle "tpope/vim-markdown"
Bundle "pangloss/vim-javascript"
Bundle "vim-ruby/vim-ruby"
Bundle "bling/vim-airline"
Bundle "tpope/vim-endwise"
Bundle 'airblade/vim-gitgutter'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle "mattn/emmet-vim"
Bundle 'tpope/vim-bundler'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-abolish'
Bundle 'rking/ag.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'jnwhiteh/vim-golang'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-rvm'
Bundle 'sickill/vim-pasta'
Bundle 'ngmy/vim-rubocop'

Bundle 'flazz/vim-colorschemes'
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'bry4n/vwilight.vim'
Bundle "cloudhead/shady.vim"
Bundle "wgibbs/vim-irblack"

Bundle "sunaku/vim-ruby-minitest"

"Bundle "Conque-Shell"

call vundle#end()

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
set nobackup
set noswapfile

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Capfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufReadPost *.md set filetype=markdown

" color scheme
colorscheme desert
set background=dark

""""""""""""""""""""""""""
"
" Bundle Settings
"
""""""""""""""""""""""""""
" RSpec
let g:rspec_command = "Dispatch rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" GitGutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Tagbar
nmap <Leader>tb :TagbarToggle<CR>

" Ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.jpg,*.gif,*.png
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Bundler
map <Leader>bi :Bundle install<CR><CR>
map <Leader>bu :Bundle update<CR><CR>

" Fugitive
map <Leader>gb :Gblame<CR><CR>
map <Leader>gs :Gstatus<CR><CR>
map <Leader>gc :Gcommit <CR><CR>
map <Leader>gh :Gbrowse<CR><CR>

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
