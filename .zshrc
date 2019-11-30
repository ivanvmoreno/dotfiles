export ZSH="/home/ivan/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    colorize
    copyfile
    cp
    debian
    history
    git
    gitignore
    nvm
    ssh-agent
)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# pip modules
export PATH=$PATH:$HOME/.local/bin
