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
plugins=(git brew osx history python mvn autojump colored-man colorize github virtualenvwrapper pip zsh-syntax-highlighting)
fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
echo $PATH
export PATH=/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH=$PATH:/Users/sai/bin
export PATH=$PATH:/Developer/Platforms/android-sdk-mac_86/platform-tools
export PATH=$PATH:/Developer/Platforms/android-sdk-mac_86/tools

export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home`
export ANT_HOME=/usr/share/ant
export CATALINA_HOME=/Library/Tomcat/libexec
export CATALINA_BASE=$CATALINA_HOME


export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:/usr/local/man:$MANPATH

eval `dircolors ~/.dircolors`

alias ls='ls --color=always -GF'
alias grep="grep --color=always"
alias egrep="egrep --color=always"
alias rmq='find . | xargs xattr -d com.apple.quarantine'
alias start_mysql='/usr/local/Cellar/mysql/5.6.22/support-files/mysql.server start'
alias stop_mysql='/usr/local/Cellar/mysql/5.6.22/support-files/mysql.server stop'
set -o vi

# set the number of open files to be 1024
ulimit -S -n 1024


# AWS Stuff
source /usr/local/share/zsh/site-functions/_aws

# Python Stuff
#
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# # cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects/python/
source /usr/local/bin/virtualenvwrapper.sh

source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# 
# Go Stuff
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#
#

export NVM_DIR="/Users/sai/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.bin/tmuxinator.zsh

alias halvpn='sudo openconnect --juniper --user h178553 --passwd-on-stdin --cafile .certs/geotrustprimaryca.pem --no-cert-check --script /etc/vpnc/vpnc-script -b  guest.halliburton.com'
#
# pssh aliases
alias psshbcbs='pssh --inline-stdout -h ~/.aiphosts/bcbs -x "-oStrictHostKeyChecking=no -i /Users/sai/aws/BCRS_BCBS_Key.pem" -p 12 -l ec2-user'
#
# End pssh alias


# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/sai/.bin/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/sai/.bin/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/sai/.bin/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/sai/.bin/google-cloud-sdk/completion.zsh.inc'
fi
