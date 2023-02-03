#!/bin/bash
{ # try
    conda config --set changeps1 false
	echo "conda disable"
} || { # catch
	echo "not install conda"
}
cp hogbal.zsh-theme ~/.oh-my-zsh/themes 
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="hogbal"/' ~/.zshrc
echo "success!"
