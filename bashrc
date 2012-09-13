# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias .='echo $PWD'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias m='less'
alias e='emacs'
alias v='vim -O'
alias islike='| diff -w -B -s - '
alias sql='mysql -u root -h 127.0.0.1'
alias ks='ls'
alias ~~='cd ~'
alias gst='git status'
alias gitsum='git st && git diff | cat'

# Set up PHP and code paths for iFixit CLI scripts and phing
export MY_CODE_DIR=/home/telder/Code
export PAGER=less
export EDITOR=vim

alias sup="updateCodeDirs.sh"
alias home="goHome.sh"

export PS1="\[\033[36m\]\u\[\033[0m\]@\[\033[35m\]\H \[\033[32m\]\t \[\033[35m\]\W\[\033[0m\] \$ "

# AND FINALLY, cd into ~/Code so I don't have to
cd Code
clear
