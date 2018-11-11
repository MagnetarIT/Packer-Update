#!/bin/sh
echo "Current Packer Version: $(packer --version)"
echo ""
echo "Getting lastest download URL for Packer for OSX on x64"
DOWNLOAD_LINK=$(curl https://www.packer.io/downloads.html | grep 'darwin_amd64' | awk -F'"' '{print $2}') 
echo ""
echo "Downloading packer from '$DOWNLOAD_LINK'"
curl $DOWNLOAD_LINK -o ~/packer.zip
echo ""
echo "Extracting packer file to /usr/local/bin     !!sudo required!!"
sudo unzip -o ~/packer.zip -d "/usr/local/bin" 
echo ""
echo "Removing ~/packer.zip"
rm ~/packer.zip
echo ""
echo ""
echo ""
echo "New Packer Version: $(packer --version)"
