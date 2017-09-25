# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

parse_git_branch() {		
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'		
}		
		
PS1="\[\033[01;31m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

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
