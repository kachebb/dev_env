# Tools
## Shell
### Oh my zsh
**Installation**
https://github.com/ohmyzsh/ohmyzsh
**Plugins**
```
plugins=(
    git
    jsontools
    gitfast
)
```

**Adjustment**
* run `git config --add oh-my-zsh.hide-status 1` and `git config --add oh-my-zsh.hide-dirty 1`, otherwise it will be slow when running in big git repo
* Change the theme to "clean"

### ssh
[Generate sshkey](https://docs.github.com/en/enterprise-server@3.0/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
[Add sshkey to github](https://docs.github.com/en/enterprise-server@3.0/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

Host *
  ServerAliveInterval 120
  ServerAliveCountMax 720

### .bash_profile

## Git
Copy .gitconfig to ~/.gitconfig

```
git config --global user.name "<name>" 
git config --global user.email "<email>"
git config --global push.default current
git config --global branch.autosetuprebase always
git config --global pull.ff only
```

## Python
### Pyenv
**Installation**
```
brew install pyenv
#brew install pyenv-virtualenv
```

**Config**
```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
#eval "$(pyenv virtualenv-init --path)"
```

### Python
**Installation**
```
pyenv install --list
pyenv install <version>
```
**Switch/setup**
```
pyenv versions
pyenv global <version>
pyenv local
```

## Java
### IntelliJ
## MySQL
brew install mysql@8.0
brew link --force mysql@8.0

copy .my.cnf over to ~/.my.cnf

## Javascript


## Kubernetes
**Install client**
brew install kubernetes-cli
brew install kubectx

**Command alias**
```
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'
```