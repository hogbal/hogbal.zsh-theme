PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

get_host() {
  local _remote="$REMOTE_HOST"
  local _remote_local="%{$fg_bold[$REMOTE_LOCAL_COLOR]%}local%{$reset_color%}"
  local _remote_remote="%{$fg_bold[$REMOTE_REMOTE_COLOR]%}$_remote%{$reset_color%}"
  local _remote_status="$_remote_remote"

  if [[ -z "$_remote" ]]; then
    _remote_status="$_remote_local"
  fi
  echo "($REMOTE_THEME_PROMPT : $_remote_status)"
}

REMOTE_LOCAL_COLOR="green"
REMOTE_REMOTE_COLOR="red"

if [ -n "$ZSH_REMOTE" ]; then
  REMOTE_THEME_PROMPT="%{$fg_bold[blue]%}SSH%{$reset_color%}"
else
  REMOTE_THEME_PROMPT="%{$fg_bold[blue]%}Docker%{$reset_color%}"
fi

RPROMPT='$(get_host)'
