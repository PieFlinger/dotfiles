#!/bin/sh

# Update repository
git stash &&
git pull --rebase &&
git submodule init &&
git submodule update &&
git stash pop

# Remove config file links in home folder
rm -f ~/.alias
rm -f ~/.git-completion.sh
rm -f ~/.mybashrc
rm -f ~/.vimrc
rm -rf ~/.vim

# Link config files in home folder
ln -sf ~/dotfiles/sh/alias.sh ~/.alias
ln -sf ~/dotfiles/sh/git-completion.sh ~/.git-completion.sh
ln -sf ~/dotfiles/sh/mybashrc.bash ~/.mybashrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim ~/.vim

printf '%s\n\t%s\n%s\n%s\n' 'if [ -f ~/.mybashrc ]; then' '. ~/.mybashrc' 'fi' 'clear' >> ~/.bashrc
