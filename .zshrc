# PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Alias
alias code="open -a /Applications/Visual\ Studio\ Code.app"

# Enable zsh completion
autoload -U compinit
compinit

# custom PROMPT
PROMPT='%K{166}%t%k %F{33}%~%f: '
# color numbers: https://jonasjacek.github.io/colors/
