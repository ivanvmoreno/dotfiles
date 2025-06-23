alias help='cat ~/.config/aliases.sh'
alias aliases='vim ~/.config/aliases.sh'

# General
alias lsproc='ps aux | grep -v grep | grep -i'
alias lsport='lsof -i -P -n | grep LISTEN | grep -i'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias mise='sh ~/.config/aerospace/mise-en-place.sh'
alias reload='exec $(ps -p $$ -o command=) -l'

# Git
alias gs='git status'
alias gc='git commit -m'
alias gca='git commit -am'
alias ga='git add'
alias gaa='git add .'

# Navigation
alias ls='ls -lF --color=always'
alias ll='ls -la'
alias ld='ls -d */'
alias la='ls -CA'
alias l='ls'
alias .='cd && ld'
alias ..='cd .. && ld'
alias ...='cd ../.. && ld'
alias ,='cd'
alias ,,='cd ..'
alias ,,,='cd ../..'

# Other
alias serve='python3 -m http.server'
alias whoami='curl -s http://ipinfo.io/ip'

# Environment variables
export XDG_CONFIG_HOME="$HOME/.config"