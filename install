#!/bin/bash
TEMPLATE_DIRECTORY=$PWD
SOURCE_DIRECTORY='/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Source'

eval cd $SOURCE_DIRECTORY

echo Creating symbolic links
sudo ln -s "$TEMPLATE_DIRECTORY/VIPER.xctemplate" "VIPER.xctemplate"
echo Created link for VIPER templates
sudo ln -s "$TEMPLATE_DIRECTORY/VIPER Tests.xctemplate" "VIPER Tests.xctemplate"
echo Created link for VIPER Test templates
