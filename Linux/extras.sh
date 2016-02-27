#!bin/bash
echo "Extras are only useful for outdated devices. These are irrelevant to the current versions." 
echo "You will need to have libimobiledevice installed. If you don't this will fail to install." 
read -r -p "Are you using ubuntu? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
    sudo apt-get install libblocksruntime-dev
    git clone https://github.com/emonti/afcclient.git
    cd afcclient
    make
        ;;
    *)
        echo "Sorry not supported!";
        ;;
esac
