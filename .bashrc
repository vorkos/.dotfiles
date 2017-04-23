# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# add some colors to the username and host
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# Unlimited history
HISTSIZE=-1
HISTFILESIZE=-1

# Preserve bash history in multiple terminal windows
# https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/vplagov/.sdkman"
[[ -s "/home/vplagov/.sdkman/bin/sdkman-init.sh" ]] && source "/home/vplagov/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
