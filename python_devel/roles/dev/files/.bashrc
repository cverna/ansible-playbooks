# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
if command -v powerline-daemon > /dev/null; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi
# User specific aliases and functions
PATH=~/.local/bin:$PATH

#source /usr/bin/virtualenvwrapper.sh 
alias ..='cd ..'
alias la='ls -lA'

# Programing
alias py='python'
alias py3='python3'
