# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql/bin

# Path to your oh-my-zsh installation.
export ZSH="/Users/kaichen.zhao/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="clean" #"robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    jsontools
    gitfast
    kubectx
    kubectl
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

##########################
# User configuration
##########################

# Preferred editor
export EDITOR='emacs'

# java
export JAVA_HOME=`/usr/libexec/java_home -v 11`

##pyenv
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init --path)"

##k8s
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'
RPS1='$(kubectx_prompt_info)'

##git
alias gb="git branch"
alias gs='git status'
alias gco='git checkout'
alias gcm='git add . && git commit -m' #must include commit message
alias mergemaster='git merge origin/master --no-ff'
