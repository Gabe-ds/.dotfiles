# more useful ls command
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

alias cat="bat -p"

alias brew-godmode="brew update; brew upgrade; brew cleanup; brew doctor;"

# PATH
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"

# pyenv settings
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# run pipenv shell automatically
function auto_pipenv_shell {
    if [ ! -n "${PIPENV_ACTIVE+1}" ]; then
        if [ -f "Pipfile" ] ; then
            pipenv shell
        fi
    fi
}

function cd {
    builtin cd "$@"
    auto_pipenv_shell
}

auto_pipenv_shell

# nodenv settings
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
