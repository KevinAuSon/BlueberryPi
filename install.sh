#!/bin/bash

sudo pacman -S -y python-dbus dbus-glib python-gobject

sudo mv blueberry /usr/lib
sudo mv bin/blueberry /usr/bin
sudo chmod +x /usr/bin/blueberry

sudo mv blueberry.service /etc/systemd/system/
sudo systemctl enable blueberry.service
sudo systemctl start blueberry.service
