#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias pac='sudo pacman'
alias apac='pacaur'
alias sapac='sudo pacaur' 
alias emnw='emacs -nw'
alias mypac='sudo pacman -Q | grep -i'
alias amypac='sudo pacaur -Q | grep -i'
alias dlmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 190K'
alias aim='cd ~/projects/AimTux/ && git pull && cmake . && make -j 4 && ./load'
alias micspamsink='pactl load-module module-remap-sink sink_name=secondary master=alsa_output.pci-0000_00_14.2.analog-stereo'
alias cdconfig='cd ~/projects/MyConfig'
untar()
{
    tar -xvf $1
}

mirrorsort()
{

    sudo cp $1 mirrorlist.sortbackup
    sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.sortbackup
    echo "Do you want to overwrite the currently in use mirrorlist file? [y,n]"
    read -n1p "yn"
    case $yn in
	y|Y) echo "Overwriting mirrorlist..."
	     su
	     rankmirrors -n 6 /etc/pacman.d/mirrorlist.sortbackup > /etc/pacman.d/mirrorlist
	     sudo echo "#Overwritten by mirrorsort function, 'date'" >> /etc/pacman.d/mirrorlist
	     exit;;
	n|N) echo "NOT overwriting mirrorlist"
	     sudo cp mirrorlist.sortbackup mirrorlist.ranked
	     su
	     rankmirrors -n 6 /etc/pacman.d/mirrorlist.sortbackup > mirrorlist.ranked
	     echo "See mirrorlist.ranked file for ranked mirrorlist. Normal mirrorlist file not overwritten."
	     exit;;
    esac
    
}

installaur()
{

    tar xvfz $1
    cd $1
    makepkg -sir
    
}

PS1='[\u@\h \W]\$ '
