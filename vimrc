set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.local/lib/python-2.7/site-packages/powerline/bindings/vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'slim-template/vim-slim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'fatih/vim-go'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'antlypls/vim-colors-codeschool'
Plugin 'sjl/badwolf'
Plugin 'cohama/lexima.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'powerline/powerline'
Plugin 'gkjgh/cobalt'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'gagoar/StripWhiteSpaces'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required
filetype plugin indent on    " required
let mapleader=","

" set background=dark
" color badwolf
set background=dark
colorscheme jellybeans

set laststatus=2 "Always show statusline
set t_Co=256
set shell=zsh
set cursorline    " highlight current line
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf8
set guifont=Inconsolata\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set tabstop=4   " number of visual spaces per TAB
set softtabstop=4   " number of spaces in TAB when editing
set expandtab    " tabs are spaces
set nowrap
set number    " show line numbers
set lazyredraw    " redraw only when we need to
set nowritebackup
set noswapfile
set nobackup
set incsearch    " search as characters are entered
set hlsearch    " highlight matches
set ignorecase
set smartcase
set wildmenu    " visual autocomplete for command menu
set showmatch    " highlight matching [{()}]
set wildignore+=*/tmp/*,*/_site/*,*/bower_components/*,*/node_modules/*,*.so,*.swp,*.zip,*/.git/*,*/coverage/*


" Remaping and configuring Gundo
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_preview_height = 40

" Cleaning highlighted searches
nnoremap <leader><space> :nohlsearch<CR>

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" Vim-airline
let g:airline_powerline_fonts = 1

" Vim-webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" Lexima
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_match_window = 'bottom,order-ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Go programming
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Quit with :Q
command -nargs=0 Quit :qa!

" Emmet
let g:user_emmet_expandabbr_key='emm'
