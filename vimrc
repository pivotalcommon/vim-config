" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"
" Colorschemes
"
Bundle 'tpope/vim-vividchalk'
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wgibbs/vim-irblack'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'candycode.vim'
Bundle 'Color-Sampler-Pack'
Bundle 'flazz/vim-colorschemes'

"
" Rails
"
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'brysgo/test_server'
Bundle 'jgdavey/vim-blockle'

"
" General Editing
"
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-unimpaired'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'mgamba/j-split'
Bundle 'matt-royal/diffthese'
Bundle 'camelcasemotion'
Bundle 'mgamba/edit-plus'
Bundle 'brysgo/quickfixfix'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'regreplop.vim'
Bundle 'Peeja/insert_mode_background_color'
Bundle 'vim-scripts/L9'
Bundle 'Peeja/vim-cdo'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

"
" Window Management
"
Bundle 'ZoomWin'

"
" Searching
"
Bundle 'mileszs/ack.vim'
Bundle 'epmatsw/ag.vim'
Bundle 'tpope/vim-abolish'
Bundle 'henrik/vim-qargs'
Bundle 'kien/ctrlp.vim'
Bundle 'burke/matcher'

"
" Navigation
"
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'

"
" Languages
"
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'slim-template/vim-slim'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-cucumber'
Bundle 'juvenn/mustache.vim'
Bundle 'Blackrush/vim-gocode'
Bundle 'rosstimson/scala-vim-support'
Bundle 'guns/vim-clojure-static'
Bundle 'chrisbra/csv.vim'

"
" Development Tool Integration
"
Bundle 'tpope/vim-fugitive'
" This plugin is slow
Bundle 'airblade/vim-gitgutter'
Bundle 'pivotal/tmux-config'
Bundle 'tpope/vim-dispatch'
Bundle 'carlobaldassi/ConqueTerm'

syntax on
filetype plugin indent on

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

au BufRead,BufNewFile *.hamlc set ft=haml

