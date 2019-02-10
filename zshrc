#set -x
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="omsai"
ZSH_THEME=maran

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history python mvn autojump colored-man colorize github pip zsh-syntax-highlighting)
fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
echo $PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/spark/bin:$PATH

#export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH
#export PATH=$PATH:/Users/sai/bin
#export PATH=$PATH:/Developer/Platforms/android-sdk-mac_86/platform-tools
#export PATH=$PATH:/Developer/Platforms/android-sdk-mac_86/tools
#
source /usr/share/powerline/bindings/zsh/powerline.zsh
export EDITOR='nvim'
#Docker Stuff
export DOCKER_HOST=tcp://localhost:2375

export ANT_HOME=/usr/share/ant
export CATALINA_HOME=/Library/Tomcat/libexec
export CATALINA_BASE=$CATALINA_HOME

export SPARK_HOME=/usr/local/spark

export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:/usr/local/man:$MANPATH

eval `dircolors ~/.dircolors`

alias ls='ls --color=always -GF'
alias grep="grep --color=always"
alias egrep="egrep --color=always"
set -o vi

# set the number of open files to be 1024
ulimit -S -n 1024
umask 0022

alias vi='nvim'

# AWS Stuff
source /usr/local/share/zsh/site-functions/_aws

#
# NVM stuff. Manages Node versions
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


