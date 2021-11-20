########################
# oh-my-zsh config
########################

# Set name of the theme to load
ZSH_THEME="clean" #"robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

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
    gitfast
    zsh-autosuggestions
)

##########################
# User configuration
##########################

export PATH=${PATH}:/usr/local/mysql/bin

# Preferred editor
export EDITOR='emacs'

# java
export JAVA_HOME=`/usr/libexec/java_home -v 11`

##pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
#eval "$(pyenv virtualenv-init --path)"


##k8s
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'
RPS1='$(kubectx_prompt_info)'

##git
alias gb="git branch"
alias gs='git status'
alias gcb='git checkout -b'
alias gcm='git add . && git commit -m' #must include commit message
alias mergemaster='git merge origin/master --no-ff'
alias gp='git push'
alias gm='git checkout $(git_main_branch)'
alias gpl='git pull'
alias gl='git log --oneline --decorate'
alias gld='git log --stat'
alias gds='git diff --staged'
alias gdc='git diff --cached'


