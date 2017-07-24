set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.local/lib/python-2.7/site-packages/powerline/bindings/vim/
set rtp+=~/vim-config/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Themes
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'antlypls/vim-colors-codeschool'
Plugin 'sjl/badwolf'
Plugin 'gkjgh/cobalt'

Plugin 'tpope/vim-sensible' " Basic config
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'sheerun/vim-polyglot' " Multiple syntax highlight
Plugin 'scrooloose/nerdtree' " Explore project
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy finder by filename
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'cohama/lexima.vim' " Autoclose parenthesis, brackets etc
Plugin 'ryanoasis/vim-devicons' " Cool icons ;D
Plugin 'tpope/vim-fugitive' " Git integration
Plugin 'rking/ag.vim' " Fuzzy finder by expression
Plugin 'gagoar/StripWhiteSpaces' " Delete white spaces before save
Plugin 'tpope/vim-surround' " Surround expressions with (, [ etc
Plugin 'klen/python-mode' " Lots of bindings to python
Plugin 'airblade/vim-gitgutter' " Git status on left of file
Plugin 'mhinz/vim-startify' " Startscreen
Plugin 'easymotion/vim-easymotion' " Move smoothly through words
Plugin 'roman/golden-ratio' " Auto resize opened window
Plugin 'greyblake/vim-preview' " Preview html and markdown files
Plugin 'w0rp/ale' " Auto linting when typing
Plugin 'craigemery/vim-autotag' " Auto update ctags

call vundle#end()            " required
filetype plugin indent on    " required
runtime! config/*.vim
