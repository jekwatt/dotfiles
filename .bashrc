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
bold=$(tput bold);
reset=$(tput sgr0);
black=$(tput setaf 16);
blue=$(tput setaf 33);
cyan=$(tput setaf 37);
gray=$(tput setaf 235);
green=$(tput setaf 71);
orange=$(tput setaf 166);
pink=$(tput setaf 168);
purple=$(tput setaf 128);
red=$(tput setaf 124);
violet=$(tput setaf 61);
white=$(tput setaf 15);
yellow=$(tput setaf 228);

# Set the terminal title and prompt
PS1="\[\033]0;\w\007\]";  # working directory full name
PS1+="\n";                # new line
PS1+="\[${pink}\]\u";     # user name
PS1+="\[${gray}\] at ";
PS1+="\[${violet}\]\h";   # host
PS1+="\[${gray}\] in ";
PS1+="\[${cyan}\]\W ";    # working directory base name
PS1+="\[${purple}\]\$(parse_git_branch) ";  # git branch
PS1+="\n";                # new line
PS1+="\[${yellow}\]=> \[${reset}\]"; # '->' (and reset color)
export PS1;

# Uncomment to use
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# navigate upwards only
up ()
{
        cd $(python -c "print('../'*${1:-1})")
    }
