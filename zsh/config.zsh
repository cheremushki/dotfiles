if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt EXTENDED_GLOB

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

# force this to vim mode
bindkey -v
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
# for inside tmux
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
## mappings for Ctrl-left-arrow and Ctrl-right-arrow for word moving
#bindkey "\e[1;5C" forward-word
#bindkey "\e[1;5D" backward-word
#bindkey "\e[5C" forward-word
#bindkey "\e[5D" backward-word
#bindkey "\e\e[C" forward-word
#bindkey "\e\e[D" backward-word

## history
#one history file for all open shells
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=100000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory
