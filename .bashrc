#if [ -z "$TMUX" ]; then
#    exec tmux new-session -A -s 0
#fi

clear() {
  command clear
  if [ -n "$TMUX" ]; then
    tmux clear-history
  fi
}

alias q='exit'
alias s='sudo'
alias p='python'

# Platform-specific aliases
if [ -n "$TERMUX_VERSION" ]; then
  alias su='tsu'
  alias upm='pkg'
  # alias pkg='upm'  # commented out as in original
elif grep -q 'ID=arch' /etc/os-release 2>/dev/null; then
  alias upm='pacman'
else
  alias upm='dnf'
fi



alias u='upm'
alias n='nvim'
alias c='clear'
alias v='vim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls'
alias t='touch'
alias k='cat'
alias m='cmatrix'
alias e='exit'
alias ll='ls -l'
alias la='ls -A'  # I don't need .. .
alias lla='ls -lA'
alias lfc='ls -F | cat -n'
alias lfac='ls -Fa | cat -n'
alias zshrc='n ~/.zshrc'
alias gitconfig='n ~/.gitconfig'
alias sstoml='n ~/.config/starship.toml'
alias fman="bash -c 'compgen -c' | fzf | xargs man"
# alias d="mv -f $HOME/trash"  # commented out as in original

cheh() {
  curl "https://cheat.sh/$1"
}

export proj="$HOME/document/project"
#export PATH="$HOME/.cargo/bin:$PATH"

export HISTFILE=~/.histfile
export HISTSIZE=5000
export HISTFILESIZE=5000

shopt -s histappend
export HISTCONTROL=ignoredups:erasedups

eval "$(starship init bash)"
eval "$(zoxide init bash)"
