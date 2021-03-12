# Custom PROMPT
PS1='\[\e[30;47m\] \D{%H:%M} \[\e[37;46m\]\[\e[30m\] \w \[\e[36;49m\]\[\e[0m\]: '

# issue that jupyterlab uses PowerShell
export BROWSER='/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'

# use nano command as default editor
export EDITOR=nano

# use Japanese Env
#export LANGUAGE = 
#export LC_ALL =
export LANG="ja_JP.UTF-8"

# Homebrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# pyenv environment settings
export PIPENV_IGNORE_VIRTUALENVS=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
