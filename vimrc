set nocompatible
filetype off

set rtp+=~/.local/lib/python-2.7/site-packages/powerline/bindings/vim/
set rtp+=~/vim-config/

call plug#begin('~/vim-config/plugged')

" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'antlypls/vim-colors-codeschool'
Plug 'sjl/badwolf'
Plug 'gkjgh/cobalt'
Plug 'noahfrederick/vim-noctu'
Plug 'noahfrederick/vim-hemisu'
Plug 'dracula/vim'

Plug 'tpope/vim-sensible' " Basic config
Plug 'vim-airline/vim-airline' " Status bar
Plug 'sheerun/vim-polyglot' " Multiple syntax highlight
Plug 'scrooloose/nerdtree' " Explore project
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy finder by filename
Plug 'mattn/emmet-vim'
Plug 'cohama/lexima.vim' " Autoclose parenthesis, brackets etc
Plug 'ryanoasis/vim-devicons' " Cool icons ;D
Plug 'tpope/vim-fugitive' " Git integration
"Plug 'rking/ag.vim' " Fuzzy finder by expression
Plug 'gagoar/StripWhiteSpaces' " Delete white spaces before save
Plug 'tpope/vim-surround' " Surround expressions with (, [ etc
Plug 'klen/python-mode' " Lots of bindings to python
Plug 'airblade/vim-gitgutter' " Git status on left of file
Plug 'mhinz/vim-startify' " Startscreen
Plug 'easymotion/vim-easymotion' " Move smoothly through words
Plug 'roman/golden-ratio' " Auto resize opened window
Plug 'greyblake/vim-preview' " Preview html and markdown files
Plug 'w0rp/ale' " Auto linting when typing
Plug 'fatih/vim-go' " Go language vim plugin
Plug 'wakatime/vim-wakatime' " Waka time plugin
Plug 'elzr/vim-json' " Better json visualization
Plug 'moll/vim-node' " Better node edition
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
"Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim' " Prefer local eslint over syntastic one
Plug 'ternjs/tern_for_vim' "Code analysis engine for javascript
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dominikduda/vim_current_word'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'

call plug#end()            " required
filetype plugin indent on    " required
runtime! config/*.vim
