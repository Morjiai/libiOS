#!bin/bash
echo "Getting pip" 
wget https://bootstrap.pypa.io/get-pip.py
echo "Installing pip" 
python get-pip.py
echo "Installing paramiko" 
pip install paramiko
echo "Running" 
python legacy.py
