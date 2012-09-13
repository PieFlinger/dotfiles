# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.alias ]; then
   . ~/.alias
fi


export PS1="\[\033[36m\]\u\[\033[0m\]@\[\033[35m\]\H \[\033[32m\]\t \[\033[35m\]\W\[\033[0m\] \$ "
export EDITOR=vim
export PAGER=less

clear
