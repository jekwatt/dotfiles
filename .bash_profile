# Added by Miniconda3 4.0.5 installer
export PATH="/Users/JENNIFER/miniconda3/bin:$PATH"

export PATH="~/bin:${PATH}"

if [[ -f ~/.bashrc ]] && [[ "$PS1" ]]; then
       source ~/.bashrc
fi


##
# Your previous /Users/JENNIFER/.bash_profile file was backed up as /Users/JENNIFER/.bash_profile.macports-saved_2017-03-11_at_16:59:11
##

# MacPorts Installer addition on 2017-03-11_at_16:59:11: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Clear the screen and scroll-back
# alias clr="clear && printf '\e[3J'"

# added by Anaconda3 5.1.0 installer
export PATH="/Users/JENNIFER/anaconda3/bin:$PATH"

# git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
