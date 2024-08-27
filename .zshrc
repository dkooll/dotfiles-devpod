# Basic PATH setup
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Zsh configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"  # You can change this to your preferred theme

# Plugins
plugins=(git docker kubectl terraform)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias tf='terraform'
alias k='kubectl'
alias d='docker'

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Use modern completion system
autoload -Uz compinit
compinit

# Enable syntax highlighting if the plugin is installed
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Enable autosuggestions if the plugin is installed
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
