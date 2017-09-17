# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Power line
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Unlimited history
HISTSIZE=-1
HISTFILESIZE=-1

# Preserve bash history in multiple terminal windows
# ************************************************** 
#
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
#
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
#
# After each command, append to the history file and reread it
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
#
# ************************************************** 

# aliases
alias la='ls -ahl'
alias ll='ls -hl'

# vim as a default editor
export VISUAL=vim
export EDITOR="$VISUAL"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/vplagov/.sdkman"
[[ -s "/home/vplagov/.sdkman/bin/sdkman-init.sh" ]] && source "/home/vplagov/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
