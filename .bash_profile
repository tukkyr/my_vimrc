# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export HISTTIMEFORMAT='%Y-%m-%dT%T%z '
export HISTCONTROL=ignoreboth
export HISTSIZE=20000
export HISTFILESIZE=20000
export HISTIGNORE=ls:fg:bg:ll:history
