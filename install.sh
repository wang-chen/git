#!/bin/bash
echo "Installing..."
echo "Author: Chen Wang [https://chenwang.site]"
cp .git-prompt.sh ~/
cp .git-completion.bash ~/
cat ./.bashrc >> ~/.bashrc
echo "done."
