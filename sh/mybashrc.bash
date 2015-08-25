# .bashrc

if [ -f ~/.alias ]; then
   . ~/.alias
fi

if [ -f ~/.git-completion.sh ]; then
   . ~/.git-completion.sh
fi

# PS1 stuff
COLOROFF='\[\033[0m\]'
DEFAULT='\[\033[39m\]'
DEFAULTBG='\[\033[49m\]'
BLACK='\[\033[90m\]'
CYANBG='\[\033[46m\]'
CYAN='\[\033[36m\]'
GREEN='\[\033[32m\]'
GREENBG='\[\033[42m\]'
WHITEBG='\[\033[47m\]'
WHITE='\[\033[37m\]'
ORANGEBG='\[\033[43m\]'
ORANGE='\[\033[33m\]'
MAGENTA='\[\033[35m\]'
MAGENTABG='\[\033[45m\]'

USERNAME="\u"
AMPERSAT="@"
HOSTNAME="\H"
SHORTPATH="\W"
ARROW=""
BRANCH=""
SPACE=" "
NEWLINE="\n"
PROMPTCHAR="\$"

# let g:airline_left_sep = ''
# let g:airline_left_alt_sep = ''
# let g:airline_right_sep = ''
# let g:airline_right_alt_sep = ''
# let g:airline_symbols.branch = ''
# let g:airline_symbols.readonly = ''
# let g:airline_symbols.linenr = ''

# export PS1=$'\[\033[0m\]\u250c[\[\033[36m\]\u\[\033[0m\]@\[\033[32m\]\H\[\033[0m\]][\[\033[33m\]`__git_ps1 %s`\[\033[0m\]:\[\033[35m\]\W\[\033[0m\]]\n\u2514[\[\033[0;36m\]\$\[\033[0m\]] '
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
# export PS1="$NAMEATHOST}""${GIT}""${PS1END}"
export PS1=$CYANBG$BLACK$SPACE$USERNAME$SPACE$CYAN'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$ORANGEBG$ARROW$BLACK$SPACE$BRANCH'"$(__git_ps1 " %s"); \
  else \
    # @5 - Changes to working tree
    echo "'$ORANGEBG$ARROW$BLACK$SPACE$BRANCH'"$(__git_ps1 " %s"); \
  fi) '$SPACE$ORANGE$GREENBG$ARROW$BLACK$SPACE$SHORTPATH$SPACE$GREEN$DEFAULTBG$ARROW$COLOROFF'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo "'$MAGENTABG$ARROW$SPACE$BLACK$SHORTPATH$SPACE$MAGENTA$DEFAULTBG$ARROW$COLOROFF$NEWLINE$WHITEBG$BLACK$SPACE$PROMPTCHAR$SPACE$WHITE$DEFAULTBG$ARROW$COLOROFF$SPACE'"; \
fi)'
export EDITOR=vim
export PAGER=less

clear
