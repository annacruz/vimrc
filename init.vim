set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.local/lib/python-2.7/site-packages/powerline/bindings/vim/
set rtp+=~/.config/nvim/
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
Plugin 'mhinz/vim-startify'

call vundle#end()            " required
filetype plugin indent on    " required
runtime! config/*.vim
