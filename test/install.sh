#!/bin/bash
# Credit to http://ubuntuforums.org/member.php?u=126210
# This script helps to install fonts
#
# Set the default font installation directory here
DEST="/usr/share/fonts/truetype/irannastaliq/"

echo "Copying fonts..."

sudo mkdir "$DEST"
sudo cp -iv ../IranNastaliq.ttf "$DEST"

echo
echo
echo "Updating the font cache..."
sudo fc-cache -fv

if [ $? != 0 ]; then
    echo "Error updating the font cache. Your fonts haven't been completely installed. Try running sudo fc-cache -fv manually. Exiting..."
    echo -n "Press <Enter> to continue."
    read FSF
    exit $?
fi

echo
echo
echo "Finished."
echo
echo "You will probably need to restart running programs to use the new fonts."
echo -n "Press <Enter> to exit. "
read WERT
exit 0
