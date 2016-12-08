#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias pac='sudo pacman'
alias emnw='emacs -nw'
alias mypac='sudo pacman -Q | grep -i'
alias dlmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 190K'


installaur()
{

    tar -xvg $1
    cd $1
    makepkg -si
    
}

PS1='[\u@\h \W]\$ '
