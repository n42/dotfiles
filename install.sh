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
