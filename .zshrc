export PATH="/usr/bin:/usr/local/bin"
export EDITOR="nvim"

alias ls="eza --color always --icons --group-directories-first --git"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory
setopt autocd

eval "$(starship init zsh)"
echo ""
neofetch