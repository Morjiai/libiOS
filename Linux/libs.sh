#!bin/bash
echo "Installing libs"
read -r -p "Are you using ubuntu? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
        sudo apt-get install libusbmuxd-dev libplist-dev  libplist++-dev libgnutls-dev libssl-dev usbmuxd make automake autoconf libtool pkg-config gcc cython doxygen
        mkdir -p ~/src
cd ~/src
git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
./autogen.sh
make
        ;;
    *)
        echo "Sorry not supported!";
        ;;
esac

