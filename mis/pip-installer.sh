#!/bin/bash
## Download a bootstrap script and if succefully pulled down install pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py


# Check if python and curl are installed
if ! [ -x "$(command -v python)" ] || ! [ -x "$(command -v curl)" ]; then
  echo "Error: python and curl must be installed to continue."
  exit 1
fi

# Download bootstrap script
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py 

# Install pip if bootstrap script was successfully pulled down
if [ -f bootstrap.sh ]; then
  python -m pip install --upgrade pip
fi