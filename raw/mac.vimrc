set nocompatible "be iMproved, required
filetype off     "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins "call vundle#begin('~/some/path/here')
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'helino/vim-json'
Bundle 'tpope/vim-markdown'
"Bundle 'vim-scripts/JavaScript-Indent'

Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'


Bundle 'Lokaltog/vim-distinguished'


Bundle 'marijnh/tern_for_vim'

Bundle 'scrooloose/syntastic'

Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'wting/rust.vim'

Bundle 'sickill/vim-monokai'

Bundle 'kchmck/vim-coffee-script'

Bundle 'othree/html5.vim'
Bundle 'mattn/emmet-vim'
"Bundle 'mxw/vim-jsx'

Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'


"Bundle 'sjl/vitality.vim'

"All of your Plugins must be added before the following line
call vundle#end()
" required
filetype plugin indent on    "required 
" To ignore plugin indent changes, instead use:
"filetype plugin on 
"
"Brief help " :PluginList          - list configured plugins
": PluginInstall(!) - install(update) plugins " :PluginSearch(!) foo - search (or refresh cache first) for foo
": PluginClean(!) - confirm(or auto - approve) removal of unused plugins "
"see: h vundle for more details or wiki for FAQ " Put your non-Plugin stuff after this line
"syntastic settings
let g:syntastic_javascript_checkers=['jshint']
"use jshint for javascript
let g:syntastic_check_on_open=1	"run check when open file
let g:syntastic_check_on_wq=1 "run check when buffer is written to disk
let g:syntastic_auto_loc_list=1   "auto open when error exists, close when errors are cleared
let g:syntastic_always_populate_loc_list=1
let g:syntastic_json_checkers=['jsonlint']




set t_Co=256
syntax on
set background=dark
colorscheme distinguished

"set cindent
"set autoindent smartindent
set autoindent
set smarttab
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

set number
set cursorline
set nowritebackup


nmap <C-a> ggvG$
imap <C-a> <Esc>ggvG$

nnoremap <C-l> :wincmd l<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <F12> :TernDef<CR>
inoremap <F12> <Esc>:TernDef<CR>i
nmap <F3> zc
imap <F3> <ESC>zc
nmap <F4> zo
imap <F4> <ESC>zo

map <F9> :NERDTreeTabsToggle<cr>

nnoremap <F10> :set number!<cr>


"code folding
set foldmethod=indent
set foldlevel=99

" buffer
set hidden
nnoremap <F7> :tabp<CR>
inoremap <F7> <Esc>:tabp<CR>

nnoremap <F8> :tabn<CR>
inoremap <F8> <Esc>:tabn<CR>

nnoremap <F5> :e<CR>
inoremap <F5> <Esc>:e<CR>

vmap <silent> <C-f> :call RangeJsBeautify()<cr>



"osx
set mouse=niv
set clipboard=unnamed

"airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod =  ':t'
let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#right_sep = '>'

