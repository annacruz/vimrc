let mapleader=","

" set background=dark
" color badwolf
set background=dark
colorscheme dracula

set laststatus=2 "Always show statusline
set t_Co=256
set shell=/bin/bash
set cursorline    " highlight current line
set modelines=0
set shiftwidth=2
" set clipboard=unnamedplus
" set mouse=r
set synmaxcol=128
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


" Cleaning highlighted searches
nnoremap <silent><leader><space> :nohlsearch<CR>

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

" Some cool remaps

" Copy filename to buffer
noremap <silent>+ :let @*=@%<CR>

" Save files on s
noremap s :w<CR>

" Make Y great again
noremap Y y$

" Yank without jank
vnoremap y myy`y

" Open quickfix window
map <silent> <F2> :copen<cr>

" Close quickfix window
map <silent> <F3> :ccl<cr>

" Toggle relative numbers
noremap <leader>r :set relativenumber!<cr>

" Reload file
noremap <c-r> :e!<cr>

" Open vim configuration directory easyly
nnoremap <leader>ov :vsplit ~/vim-config<cr>

" Reload vim configuration
nnoremap <leader>rc :source ~/vim-config/vimrc<cr>

" Open last buffer.
nnoremap <Space><Space> <C-^>

" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>

" Easily close a tab.
noremap <Leader>tc :tabclose<CR>

" Easily move a tab.
noremap <Leader>tm :tabmove<CR>

" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>

" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>

" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" Quit with :Q
command -nargs=0 Quit :qa!

" Toggle hightlight ocurrencies of the current word
nnoremap <Leader>m :VimCurrentWordToggle
