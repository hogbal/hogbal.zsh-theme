#!/bin/bash
cp hogbal.zsh-theme ~/.oh-my-zsh/themes 
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="hogbal"/' ~/.zshrc
echo "success!"
