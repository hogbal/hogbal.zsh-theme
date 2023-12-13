# hogbal.zsh-theme

Customized to distinguish docker from host using the theme "robbyrussell".
You can use the "ZSH_REMOTE" environment variable to tell if it's SSH or DOCKER, and you can use the "REMOTE_HOST" variable to modify the name!

## Usage
`($ZSH_REMOTE : $REMOTE_HOST)`  

Because you enter the prompt as above, you need to set the value of the environment variable. If there is no value of "ZSH_REMOTE", "Docker" will be entered.

- zsh local
![zsh local](https://github.com/hogbal/hogbal.zsh-theme/blob/main/src/zsh_local.png)

- zsh docker
![zsh docker](https://github.com/hogbal/hogbal.zsh-theme/blob/main/src/zsh_docker.png)
