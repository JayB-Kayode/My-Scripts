# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias gc='git commit'
alias gp='git push'
alias gs='git status'
alias gl='git log'

#this function is to do an automated "ls" everytime i do a "cd" command
function cd {
	builtin cd "$@" && ls -a
}