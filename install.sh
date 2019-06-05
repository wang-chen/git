#!/bin/bash
echo "Installing..."
echo "Author Jeffsan Chen Wang: jeffsan.wang@gmail.com"
cp .git-prompt.sh ~/
cp .git-completion.bash ~/
cat ./.bashrc >> ~/.bashrc
echo "done."
