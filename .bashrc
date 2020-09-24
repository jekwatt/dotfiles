# .bashrc

# Sbiddle advanced history
export HISTIGNORE="clear:history"
export HISTCONTROL="ignorespace:ignoredups"

# Ignore same successive entries
export HISTCONTROL="ignoreboth"

# Set to unlimited bash history
HISTSIZE=100000000
HISTFILESIZE=$HISTSIZE

# Enhanced bash completion on macOS
# This makes `git` much nicer
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Color
orange=$(tput setaf 166);
red=$(tput setaf 160);
pink=$(tput setaf 168);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
blue=$(tput setaf 60);
black=$(tput setaf 16);
gray=$(tput setaf 235);
bold=$(tput bold);
reset=$(tput sgr0);

# Custom terminal setting
PS1="\[${bold}\]\n";
PS1+="\[${pink}\]\u"; # user name
PS1+="\[${gray}\] at ";
PS1+="\[${blue}\]\h"; # host
PS1+="\[${gray}\] in ";
PS1+="\[${green}\]\W "; # working directory
PS1+="\n"; # add new line
PS1+="\[${gray}\]-> \[${reset}\]"; # '$' (and reset color)
# PS1+="\[${black}\]\$ \[${reset}\]"; # '$' (and reset color)
export PS1;

# Uncomment to use
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# navigate upwards only
up ()
{
        cd $(python -c "print('../'*${1:-1})")
    }
