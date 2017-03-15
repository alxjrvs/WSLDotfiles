#################################
####  ALXJRVS Shell Profile  ####
####      Version 2.0.1      ####
####       "Lightray"        ####
#################################

#### CHANGELOG
  ## 4.20.2014 2.0.0 There Came a Time When The Old Gods Died.
  ## 1.19.2015 2.0.1  THEN—THERE WAS NEW LIGHT!
    # - vim -> neovim


#### Contents ####
  ## .I. Setup
  ## .II. Aliases
   #   .IIa. Command Line Navigation
   #   .IIb. Git
   #   .IIc. Vim
   #   .IId. Tmux
   #   .IIe. Programming (Ruby, Rails)
   #   .IIf. Web Development
   #   .IIg. Toolbox
  ## .III. Environment Tweaks

#### .I. Setup ####
## Source Prezto  https://github.com/sorin-ionescu/prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## Initialize chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

#Set default chruby
chruby ruby-2.3.1

#### .II. Aliases ####
#### .IIa. Command Line Navigation ####
alias ..='cd ..'
alias code='cd ~/Code/'
alias ls='ls -AFGp'

#### .IIb. Git ####
alias gx='gitx'
alias gp='git push'
alias gs='git status'
alias gpr='git pull --rebase'

#### .IIc. Editors ####
alias vinstall="nvim +PlugInstall +qall"
alias vclean="nvim +PlugClean +qall"
alias vupdate="nvim +PlugUpdate +qall"
alias v="nvim -u ~/.nvimrc"

alias a="atom ."

#### .IId. (Open) ####

#### .IIe. Programming (Ruby, Rails) ####

#### .IIf. Web Development ####

#### .IIg. Toolbox ####
alias rsync="rsync -rzhP"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"

kill_port() {
   lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill | echo "Killed servers on port $*"
}

#### .III. Environment Tweaks ####
## Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

## Adding Sbin to $PATH
export PATH="/usr/local/sbin:$PATH"

## Enable Zsh Completion
fpath=(/usr/local/share/zsh-completions $fpath)

## Hack to stop Zshell from renaming tmux
DISABLE_AUTO_TITLE=true

## Ruby Performance Tweaks
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

##Add ADB to path
export PATH=$PATH:/Applications/Android\ Studio.app/sdk/platform-tools

##Set Gopath
export GOPATH=$HOME/Code/.go
export PATH=$PATH:$GOPATH/bin

## Set Colors
export TERM=screen-256color

## Set Editor
export EDITOR=/usr/local/bin/nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## Zipcar 
make_sav() {
 awk '/instances/{gsub(/[0-9]/, "1")}; 1' som_dogfood.yaml > dev_dogfood.yaml
 sed -e '/lmz/{N;N;d;}' dev_dogfood.yaml > dev_dogfood2.yaml

 mv dev_dogfood2.yaml dev_dogfood.yaml

 echo "- name: dev-tools" >> dev_dogfood.yaml
 echo "  version: v0-27-0" >> dev_dogfood.yaml
 echo "  instances: 1" >> dev_dogfood.yaml
 mv dev_dogfood.yaml $HOME
 sav init $HOME/dev_dogfood.yaml
}
