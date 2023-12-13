PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Docker
DOCKER_THEME_PROMPT="%{$fg_bold[blue]%}Docker%{$reset_color%}"
DOCKER_LOCAL_COLOR="green"
DOCKER_REMOTE_COLOR="red"

get_docker_host() {
  local _docker="$DOCKER_HOST"
  local _docker_local="%{$fg_bold[$DOCKER_LOCAL_COLOR]%}local%{$reset_color%}"
  local _docker_remote="%{$fg_bold[$DOCKER_REMOTE_COLOR]%}$_docker%{$reset_color%}"
  local _docker_status="$_docker_remote"

  if [[ -z "$_docker" ]]; then
    _docker_status="$_docker_local"
  fi
  echo "($DOCKER_THEME_PROMPT : $_docker_status)"
}

RPROMPT='$(get_docker_host)'

# Additional settings for the prompt
# PROMPT='%n@%m %{$fg[green]%}%~ %{$reset_color%}%(!.#.$) '
