#! /usr/bin/bash


# vim
echo ""
echo "*** BEGIN COSTOMIZING ***"
echo "## Costimize VIM now..."
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "set nu!" >> ~/.vimrc
echo "set rnu" >> ~/.vimrc
echo "Done!"
echo "-----------------"


# zsh
echo "## Installing zsh first.."
sudo apt install zsh -y
echo "Done!"
echo "-----------------"


# oh-my-zsh
echo "## Costimize to zsh now..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Done!"
echo "-----------------"

# configue backblaze
cd ~
wget https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux
mv b2-linux b2
chmod +x b2 

./b2 authorize_account
