# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.alias ]; then
   . ~/.alias
fi

if [ -f ~/.git-completion.sh ]; then
   . ~/.git-completion.sh
fi


export PS1="\[\033[0m\]/[\[\033[36m\]\u\[\033[0m\]@\[\033[35m\]\H\[\033[0m\]][\[\033[32m\]\t\[\033[0m\]][\[\033[35m\]\W\[\033[0m\]]\n\\\[\[\033[0;36m\]\$\[\033[0m\]] "
export EDITOR=vim
export PAGER=less

clear
