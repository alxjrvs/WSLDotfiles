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
## Source Prezto  htps://github.com/sorin-ionescu/prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## Initialize Rbenv https://github.com/sstephenson/rbenv
eval "$(rbenv init -)"

#### .II. Aliases ####
#### .IIa. Command Line Navigation ####
alias ..='cd ..'
alias code='cd ~/Code/'
alias ls='ls -AFGp'

#### .IIb. Git ####
alias gx='gitx'
alias ga='gitx'
alias gp='git push'
alias gs='git status'
alias gpr='git pull --rebase'

alias conflicts="git ls-files --unmerged | cut -f2 | uniq | xargs nvim"
alias gc="git checkout"
alias gcm="git commit -m"

gcb() {
  (git checkout -b $*; git push -u origin $*)
}

#### .IIc. Vim ####
alias vinstall="nvim +BundleInstall +qall"
alias vclean="nvim +BundleClean +qall"
alias vupdate="nvim +BundleUpdate +qall"
alias v="nvim"

#### .IId. Tmux ####
alias tks="tmux kill-session -t"
alias tas="tmux attach-session -t"
alias tls="tmux list-sessions"
alias tmux="tmux -2"

#### .IIe. Programming (Ruby, Rails) ####
alias fr='foreman run'
alias bake="foreman run bundle exec rake"
alias migrate="bundle exec rake db:migrate db:test:prepare"

#### .IIf. Web Development ####
alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias db_restore='pg_restore --verbose --clean --no-acl --no-owner'

#### .IIg. Toolbox ####
alias swpk='rm .*.*.swp'
alias rsync="rsync -rzhP"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias tips='vim ~/.tip_sheet'

kill_port() {
   lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill | echo "Killed servers on port $*"
}

#### .III. Environment Tweaks ####
## Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

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

## Java
export JASPER_DB55="jasperserver_pro55"
export JASPER_HOST55="localhost"
export JASPER_PASSWORD55="4321vela"
export JASPER_USER55="jasper"
export CASSIE_SLAVE_DS="vfm_slave"
export VFM_DB_SLAVE_DS="vfm_slave"


##Add ADB to path
export PATH=$PATH:/Applications/Android\ Studio.app/sdk/platform-tools

##Set Gopath
export GOPATH=$HOME/Code/.go
export PATH=$PATH:$GOPATH/bin

## Motion Android
export RUBYMOTION_ANDROID_SDK="~/android-rubymotion/sdk"
export RUBYMOTION_ANDROID_NDK="~/android-rubymotion/ndk"

## Set Colors
export TERM=screen-256color

## Set Editor
export EDITOR='vi'
