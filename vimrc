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

" Based on http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/vundle/autoload/vundle.vim"))
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !rm -rf ~/.vim/bundle/vundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let need_to_install_plugins=1
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

"
" Colorschemes
"
Plugin 'tpope/vim-vividchalk'
Plugin 'chriskempson/base16-vim'
Plugin 'molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wgibbs/vim-irblack'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'candycode.vim'
Plugin 'Color-Sampler-Pack'
Plugin 'flazz/vim-colorschemes'

"
" Rails
"
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'brysgo/test_server'
Plugin 'jgdavey/vim-blockle'

"
" General Editing
"
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kana/vim-textobj-user'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'kana/vim-textobj-line'
Plugin 'thinca/vim-textobj-between'
Plugin 'tpope/vim-unimpaired'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'mgamba/j-split'
Plugin 'matt-royal/diffthese'
Plugin 'camelcasemotion'
Plugin 'mgamba/edit-plus'
Plugin 'brysgo/quickfixfix'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'regreplop.vim'
Plugin 'Peeja/insert_mode_background_color'
Plugin 'vim-scripts/L9'
Plugin 'Peeja/vim-cdo'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'YankRing.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'editorconfig/editorconfig-vim'

"
" Window Management
"
Plugin 'ZoomWin'

"
" Searching
"
Plugin 'mileszs/ack.vim'
Plugin 'epmatsw/ag.vim'
Plugin 'tpope/vim-abolish'
Plugin 'henrik/vim-qargs'
Plugin 'kien/ctrlp.vim'

"
" Navigation
"
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"
" Languages
"
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'nono/vim-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'juvenn/mustache.vim'
Plugin 'Blackrush/vim-gocode'
Plugin 'rosstimson/scala-vim-support'
Plugin 'guns/vim-clojure-static'
Plugin 'chrisbra/csv.vim'
Plugin 'elzr/vim-json'

"
" Development Tool Integration
"
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'pivotal/tmux-config'
Plugin 'tpope/vim-dispatch'
Plugin 'carlobaldassi/ConqueTerm'
Plugin 'sjl/vitality.vim'
Plugin 'itspriddle/vim-marked'

call vundle#end()
filetype plugin indent on

syntax on

if need_to_install_plugins == 1
  echo "Installing plugins via Vundle. Please ignore warnings afterwards."
  echo "This is a one-time operation that will take about a minute..."
  silent! PluginInstall
  echo "Done installing Vundle plugins!"
  q
endif

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

au BufRead,BufNewFile *.hamlc set ft=haml
