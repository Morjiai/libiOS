#!bin/bash
echo "Getting ready to set up libiOS"
read -r -p "Would you like to build 9.3/b3/s3tz7.m? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
        clang -o 9.3/b3/s3tz7.m
        ./a.out
        ;;
    *)
    read -r -p "Would you like to run legacy SSH exploit?[y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
        python SSH/legacy.py
        ;;
    *)
        echo !";
        ;;
        ;;
esac

