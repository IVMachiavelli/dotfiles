# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#alias badpac='sudo rm -rf /var/lib/'
PS1='[\u@\h \W]\$ '

BROWSER=/usr/bin/vivaldi-stable
EDITOR=/usr/bin/nvim
