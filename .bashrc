#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias pac='sudo pacman'
alias emnw='emacs -nw'
alias lgrep='ls -a --color=auto | grep -i'
PS1='[\u@\h \W]\$ '
