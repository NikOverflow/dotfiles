export PATH="/usr/bin:/usr/local/bin"
export WORDCHARS="_"
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_PROMPT="Enter the flag for %u: "

alias ls="eza --color always --icons --group-directories-first --git -h"

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey "^[[3~" delete-char
bindkey "^[[3;5~" delete-word
bindkey "^H" backward-delete-word


HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory
setopt autocd

echo ""
neofetch
eval "$(starship init zsh)"