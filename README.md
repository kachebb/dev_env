# Tools
## Shell
### Oh my zsh
**Installation**
https://github.com/ohmyzsh/ohmyzsh

`cp ./custom.zsh ~/.oh-my-zsh/custom/'

### ssh
[Generate sshkey](https://docs.github.com/en/enterprise-server@3.0/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

[Add sshkey to github](https://docs.github.com/en/enterprise-server@3.0/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

copy the content of `sshconfig` to ~/.ssh/sshconfig

## Git
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
brew install pyenv
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
Import `intellij_settings.zip`

## MySQL
brew install mysql@8.0

brew link --force mysql@8.0

copy .my.cnf over to ~/.my.cnf

## Javascript


## Kubernetes
```
brew install kubernetes-cli
brew install kubectx
```