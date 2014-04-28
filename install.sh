#!/bin/bash

# Check out submodules
# cd "${HOME}/.dotfiles"
# git submodule --quiet update --init
# cd "${OLDHOME}"

# Link in files, replacing whatever's there
ln -fs ".dotfiles/bash/bashrc" "${HOME}/.bashrc"
ln -fs ".dotfiles/bash/bash_functions" "${HOME}/.bash_functions"
ln -fs ".dotfiles/bash/bash_aliases" "${HOME}/.bash_aliases"
ln -fs ".dotfiles/bash/bash_logout" "${HOME}/.bash_logout"

ln -fs ".dotfiles/tmux/tmux.conf" "${HOME}/.tmux.conf"

ln -fs ".dotfiles/git/gitconfig" "${HOME}/.gitconfig"

ln -fs ".dotfiles/vim/vimrc" "${HOME}/.vimrc"


# install pathogen
mkdir -p "${HOME}/.vim/autoload"
pushd "${HOME}/.vim/autoload"
	curl -Sso pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
popd

# install non-bundle plugins
mkdir -p "${HOME}/.vim/plugin"
pushd "${HOME}/.vim/plugin"
	# vim-gnupg
	curl -Sso gnupg.vim https://raw.githubusercontent.com/jamessan/vim-gnupg/master/plugin/gnupg.vim
popd

# install plugin bundles
mkdir -p "${HOME}/.vim/bundle"
pushd "${HOME}/.vim/bundle"

   # install nerdtree
   git clone https://github.com/scrooloose/nerdtree.git

   # install git-gutter
   git clone git://github.com/airblade/vim-gitgutter.git

popd
