 
# User specific aliases and functions
alias ls='ls -G'
#alias ls="ls --color -l" 
# .bashrc
 
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# sbiddle advanced history
export HISTIGNORE="clear:history"
export HISTCONTROL="ignorespace:ignoredups"

# Ignore same sucessive entries
export HISTCONTROL="ignoreboth"

# Set to unlimited bash history
HISTSIZE=100000000
HISTFILESIZE=$HISTSIZE

# Set to simple terminal prompt
# PS1="$(tput setaf 166)\u@\h \W -> $(tput sgr0)";
# export PS1;

# My xterm color options
orange=$(tput setaf 166);
red=$(tput setaf 160);
pink=$(tput setaf 168);
# yellow=$(tput setaf 228);
# green=$(tput setaf 71);
blue=$(tput setaf 60);
black=$(tput setaf 16);
bold=$(tput bold);
reset=$(tput sgr0);

# Setup bash custom prompt (PS1)
# PS1="\[${bold}\]"; # insert blank line
PS1="\[${bold}\]\n";
PS1+="\[${pink}\]\u"; # user name;
PS1+="\[${black}\] at ";
PS1+="\[${blue}\]\h"; # host
PS1+="\[${black}\] in ";
PS1+="\[${green}\]\W "; # working directory
PS1+="\n";
PS1+="\[${black}\]-> \[${reset}\]"; # '->' (and reset color)
# PS1+="\[${black}\]\$ \[${reset}\]"; # '$' (and reset color)
export PS1;
