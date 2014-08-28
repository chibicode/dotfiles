set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'jiangmiao/auto-pairs'
Plugin 'JulesWang/css.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'mtth/scratch.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rhysd/clever-f.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'skalnik/vim-vroom'
Plugin 'szw/vim-maximizer'
Plugin 'szw/vim-tags'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'thinca/vim-visualstar'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'wesQ3/vim-windowswap'

call vundle#end()
filetype plugin indent on

colorscheme base16-ocean

source ~/.vim/base.vim
source ~/.vim/ignore.vim
source ~/.vim/autocmd.vim
source ~/.vim/functions.vim
source ~/.vim/plugins.vim
source ~/.vim/mappings.vim
source ~/.vim/secrets.vim
