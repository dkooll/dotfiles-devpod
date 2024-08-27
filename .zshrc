# Path and environment
export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export GREP_OPTIONS="--color=never"
export TF_CLI_ARGS="-no-color"
export EZA_COLORS="di=38;5;109:fi=38;5;132:*.*=38;5;132:Makefile=38;5;132:README=38;5;132:Dockerfile=38;5;132:da=none:un=38;5;109:gu=38;5;109:uu=38;5;109:ur=38;5;187:uw=38;5;187:ux=38;5;187:gr=38;5;187:gw=38;5;187:gx=38;5;187:tr=38;5;187:tw=38;5;175:tx=38;5;187:sn=none:sb=none:hd=none:lp=none:cc=none:mi=none:pi=none:so=none:bd=none:cd=none:or=none:su=none:sf=none:ow=38;5;187:st=38;5;187"
export TERM=xterm-256color

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000
export SAVEHIST=1000

# Alias definitions
alias tf='terraform'
alias cd='z'

# ZSH options
setopt INC_APPEND_HISTORY SHARE_HISTORY HIST_EXPIRE_DUPS_FIRST HIST_IGNORE_DUPS HIST_FIND_NO_DUPS HIST_IGNORE_SPACE HIST_VERIFY EXTENDED_HISTORY

# Source scripts and initialize tools
source $ZSH/oh-my-zsh.sh

# Initialize starship if available
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi

# Initialize zoxide
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
fi
