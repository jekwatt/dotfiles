# .bashrc
 
# User specific aliases and functions
alias ls='ls -G'
#alias ls="ls --color -l" 
 
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# sbiddle advanced history
export HISTIGNORE="clear:history"
export HISTCONTROL="ignorespace:ignoredups"

# ignore same sucessive entries
export HISTCONTROL="ignoreboth"
