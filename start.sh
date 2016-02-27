#!bin/bash
echo "Getting ready to set up libiOS"
read -r 1 -b "Would you like to exit, build 9.3/b3/s3tz7.m or run legacy SSH exploit ? (E/b/r) " ans;

case $ans in
    r|R)
       python SSH/legacy.py;;
    b|B)
       clang -o 9.3/b3/s3tz7.m;;
    *)
        exit ;;
esac
