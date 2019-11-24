#!/bin/sh
if [ "`pwd`" = "/" ];then
#REMOVE OLD RIGHT CLICK OPTIONS
find root/.config/rox.sourceforge.net/OpenWith/.*/ | grep "VLC-gtk" > tmp/vlc-gtk_install.txt
find root/.config/rox.sourceforge.net/OpenWith/.*/ | grep "VLC_nogui" >> tmp/vlc-gtk_install.txt
cat tmp/vlc-gtk_install.txt | grep -i 'VLC' |grep -v '\.\./OpenWith' | grep -v 'OpenWith/\./\.' |while read LINE; do rm -v "$LINE"; done
rm -f tmp/vlc-gtk_install.txt
fi