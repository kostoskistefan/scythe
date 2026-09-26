directory() {
   echo "%B%{$fg[cyan]%}%~ %{$reset_color%}%b"
}

current_time() {
   echo "%B⪦ %* %b"
}

return_status() {
   echo "%{$fg[red]%}%(?..🞫 )%{$reset_color%}"
}

prompt_end() {
  echo -n "%{%k%}"
  echo -n "\n%B⪧ %{%f%}%b"
}

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[red]%} %B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" \u25c9"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} added ✈%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} modified 🖉 %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} deleted ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} renamed ➦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} unmerged ✂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$(echoti setaf 245)%} untracked ◇%{$reset_color%}"

PROMPT='$(return_status)$(directory)$(git_prompt_info)$(git_prompt_status)$(prompt_end)'
RPROMPT='%{$(echotc UP 1)%}$(current_time)%{$(echotc DO 1)%}'
