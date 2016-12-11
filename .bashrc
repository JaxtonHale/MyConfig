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

mirrorsort()
{

    sudo cp $1 mirrorlist.sortbackup
    sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.sortbackup
    echo "Do you want to overwrite the currently in use mirrorlist file? [y,n]"
    read -p -n1 yn
    case $yn in
	y|Y) echo Overwriting mirrorlist...
	     su
	     rankmirrors -n 6 /etc/pacman.d/mirrorlist.sortbackup > /etc/pacman.d/mirrorlist
	     exit;;
	n|N) echo "NOT overwriting mirrorlist"
	     sudo cp mirrorlist.sortbackup mirrorlist.ranked
	     su
	     rankmirrors -n 6 /etc/pacman.d/mirrorlist.sortbackup > mirrorlist.ranked
	     exit
	     echo "See mirrorlist.ranked file for ranked mirrorlist. Normal mirrorlist file not overwritten." ;;
    esac
    
}

installaur()
{

    tar xvfz $1
    cd $1
    makepkg -si
    
}

PS1='[\u@\h \W]\$ '
