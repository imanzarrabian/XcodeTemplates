#!/bin/bash

templatesDirectory="One More Thing Studio"

if [ "$#" -eq 1 ]; then
    templatesDirectory="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "Usage: install.sh {install_directory_name}"
    exit 1
fi

#this is Xcode 9 specific path to the templates
finalInstallationPath=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project\ Templates/iOS/"${templatesDirectory}"

echo "Installation directory is: ${finalInstallationPath}"

if [ -d "${finalInstallationPath}" ]; then
    rm -r "${finalInstallationPath}"
fi

mkdir -p "${finalInstallationPath}"

cp -r *.xctemplate "${finalInstallationPath}"
