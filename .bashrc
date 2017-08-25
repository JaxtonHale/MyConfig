#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'

PS1='[\u@\h \W]\$ '

#load alias file:
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
