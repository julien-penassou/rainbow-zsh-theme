local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# color settings for [myuser][myhost][mytime][mydir]
# you can change the color of the user if you are root
if [[ $UID -eq 0 ]]; then
	local myuser='👑%{$terminfo[bold]$fg[green]%}[%n]%{$reset_color%}'
else
	local myuser='🚀%{$terminfo[bold]$fg[magenta]%}[%n]%{$reset_color%}'
fi

local myhost='%{$terminfo[bold]$fg[cyan]%}[%m]%{$reset_color%}'
local mytime='%{$terminfo[bold]$fg[yellow]%}[%*]%{$reset_color%}'
local mydir='%{$terminfo[bold]$fg[red]%}[%~] %{$reset_color%}'
local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'

#ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"


PROMPT="╭─${myuser}${myhost}${mytime}${mydir}${vcs_branch}
╰─ "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$terminfo[bold]$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$terminfo[bold]$fg[green]%}"

ZSH_THEME_HG_PROMPT_PREFIX="$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_HG_PROMPT_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
ZSH_THEME_HG_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_DIRTY"
ZSH_THEME_HG_PROMPT_CLEAN="$ZSH_THEME_GIT_PROMPT_CLEAN"