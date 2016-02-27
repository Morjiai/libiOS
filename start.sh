#!/bin/bash
echo "Welcome to libiOS!"
echo "1.) Compile  libiOS/9.3/B3/s3tz7.m"
echo "2.) Compile linux library."
echo "3.) Compile Extras."
echo "4.) Run outdated SSH legacy exploit." 

read n
case $n in
    1) clang -o 9.3/B3/s3tz7.m
;;
    2) sh Linux/libs.sh
;;
    3) sh Linux/extras.sh
;;
    4) python SSH/legacy.py
;;
esac
