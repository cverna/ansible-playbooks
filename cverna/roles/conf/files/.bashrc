# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
#if command -v powerline-daemon > /dev/null; then
#    powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#    . /usr/share/powerline/bash/powerline.sh
#fi
# User specific aliases and functions
PATH=~/.local/bin:$PATH

function parse_git_branch {

        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'

}

function proml {

  local        BLUE="\[\033[0;34m\]"

# OPTIONAL - if you want to use any of these other colors:

  local         RED="\[\033[0;31m\]"

  local   LIGHT_RED="\[\033[1;31m\]"

  local       GREEN="\[\033[0;32m\]"

  local LIGHT_GREEN="\[\033[1;32m\]"

  local       WHITE="\[\033[1;37m\]"

  local  LIGHT_GRAY="\[\033[0;37m\]"

# END OPTIONAL

  local     DEFAULT="\[\033[0m\]"

PS1="$GREEN\w\n $LIGHT_GREEN[\u@\h] $BLUE\$(parse_git_branch) $DEFAULT\$ "

}

function pullpr {
remote="${2:-upstream}"
git fetch $remote pull/$1/head:pr_$1
git checkout pr_$1
}

proml

source /usr/bin/virtualenvwrapper.sh 
alias ..='cd ..'
alias la='ls -lA'
alias vi='nvim'
alias vim='nvim'

# Programing
alias py='python'
alias py3='python3'