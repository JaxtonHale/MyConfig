#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias pac='sudo pacman'
alias emnw='emacs -nw'

installaur()
{

    tar -xvg $1
    cd $1
    makepkg -si
    
}

PS1='[\u@\h \W]\$ '
