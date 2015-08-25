# .bashrc

if [ -f ~/.alias ]; then
   . ~/.alias
fi

if [ -f ~/.git-completion.sh ]; then
   . ~/.git-completion.sh
fi

export PS1=$'\[\033[0m\]\u250c[\[\033[36m\]\u\[\033[0m\]@\[\033[32m\]\H\[\033[0m\]][\[\033[35m\]\W\[\033[0m\]:\[\033[33m\]`__git_ps1 %s`\[\033[0m\]]\n\u2514[\[\033[0;36m\]\$\[\033[0m\]] '
export EDITOR=vim
export PAGER=less

clear
