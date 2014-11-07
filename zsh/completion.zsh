# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# more extensive tab completion
autoload -U compinit
compinit
