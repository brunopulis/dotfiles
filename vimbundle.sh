#!/bin/sh

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Go to bundle folder
cd ~/.vim/bundle/

# Get all plugins
git clone https://github.com/vim-scripts/bufkill.vim
git clone https://github.com/wincent/Command-T.git
echo "Command-T will need extra setup, opening up setup page..."
open https://github.com/wincent/Command-T/blob/master/doc/command-t.txt#L174
git clone https://github.com/mileszs/ack.vim
git clone https://github.com/editorconfig/editorconfig-vim.git
git clone https://github.com/sjl/gundo.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/mitechie/pyflakes-pathogen.git
git clone https://github.com/scrooloose/syntastic.git
echo "Syntastic will require code validators being public available"
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/nvie/vim-flake8.git
git clone https://github.com/mhinz/vim-signify.git
git clone https://github.com/millermedeiros/vim-statline.git
git clone https://github.com/groenewege/vim-less.git
git clone https://github.com/AndrewRadev/splitjoin.vim.git
git clone https://github.com/godlygeek/tabular.git

# Configure Command-T
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
