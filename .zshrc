# Configure and start Oh My Zsh:

export ZSH=$HOME/.oh-my-zsh

CASE_SENSITIVE=true
DISABLE_AUTO_UPDATE=true
ZSH_THEME=agnoster

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Address an issue with syntax highlighting and copying/pasting long text:
# Note: see https://github.com/zsh-users/zsh-syntax-highlighting/issues/295.

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# Aliases:

alias cls='clear && printf "\e[3J"'
alias cp='cp -i'
alias ll='ls -lh'
alias ls='ls --color=auto -G'
alias mv='mv -i'
alias rgrep='rgrep --color=always'
alias rm='rm -i'

# OpenCOR:

export LD_LIBRARY_PATH=$HOME/OpenCOR/lib
export PATH=$HOME/OpenCOR:$HOME/OpenCOR/python/bin:$PATH
