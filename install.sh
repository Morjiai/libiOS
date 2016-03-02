#!bin/bash
read -r -p "Would you like to run the installer? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
       sudo apt-get update && sudo apt-get upgrade && sudo apt-get install libblocksruntime-dev libusbmuxd-dev libplist-dev libplist++-dev libgnutls-dev libssl-dev usbmuxd make automake autoconf libtool pkg-config gcc cython doxygen
        ;;
    *)
        echo "Done!";
        ;;
esac
