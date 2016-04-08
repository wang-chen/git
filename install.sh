#!/bin/bash
echo "Installing..."
echo "Author Jeffsan Chen Wang: jeffsan.wang@gmail.com"
sudo cp git-*.sh ~/
sudo cp myros.sh ~/
sudo cp 52-ftdi.rules /etc/udev/rules.d
sudo cat ./.bashrc >> ~/.bashrc
echo "done."
