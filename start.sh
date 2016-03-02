#!/bin/bash
echo "Welcome to libiOS!"
echo "1.) Compile linux library."
echo "2.) Compile Extras."
echo "3.) Run outdated SSH legacy exploit." 
echo "4.) Mount HFS." 

read n
case $n in
    1) sh Linux/libs.sh
;;
    2) sh Linux/extras.sh
;;
    3) python SSH/legacy.py
;;
    4) sh Tools/hfs-mount.sh
;;
esac
