# PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Alias
alias nano='/usr/local/bin/nano'
alias code="open -a /Applications/Visual\ Studio\ Code.app"

# Enable zsh completion
# autoload -Uz compinit
# compinit

# custom PROMPT
PROMPT='%K{166}%t%k %F{33}%~%f: '
# color numbers: https://jonasjacek.github.io/colors/

# pyenv settings

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(pyenv init -)"
