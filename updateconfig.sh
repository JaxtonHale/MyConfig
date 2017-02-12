#!/bin/bash

#Copies config files from home folder to github folder.

cd ~/projects/MyConfig/
echo "CD to /projects/MyConfig"
cp ~/.bashrc .bashrc
echo "Copied .bashrc to MyConfig"
cp ~/.i3status.conf .i3status.conf
echo "Copied .i3status.conf to MyConfig"
cp ~/.emacs.d/init.el .emacs.d/init.el
echo "Copied emacs init.el to MyConfig"
cp ~/.i3/config .i3/config
echo "Copied i3 config to MyConfig"
cp -r ~/.config/AimTux ./.config/
echo "Copied AimTux configs to MyConfig"
cp ~/.config/termite/config .config/termite/config
cp ~/.config/compton.conf .config/compton.conf
echo "Copied compton.conf and termite config to MyConfig"
cp ~/.config/redshift.conf .config/redshift.conf
echo "Copied redshift config to MyConfig"
git add -u .
git status

