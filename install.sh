#!/bin/sh

cd "$(dirname "$(readlink -f "$0")")"



echo "* Attempting to remove old QuickTile installs"
sudo pip uninstall quicktile -y
sudo rm -f /usr/local/bin/quicktile{,.py}

echo "* Running setup.py install"
sudo python2.7 setup.py install

echo "* Copying quicktile.desktop to /etc/xdg/autostart/"
sudo sudo cp quicktile.desktop /etc/xdg/autostart/
