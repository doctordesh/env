export PATH=/usr/local/bin:$PATH
export PGDATA=/usr/local/var/postgres
export PATH=/usr/local/php5/bin:$PATH
# export PATH=/usr/local/php5/bin:$PATH # PHP5.5 installed in /usr/local/php5 with http://php-osx.liip.ch/
# I /usr/bin finns det en symlänk till /usr/local/php5/bin/php istället för raden ovan

source ~/code/gobrave-tools/Dotfiles/functions.sh
source ~/code/gobrave-tools/Dotfiles/colors.sh
source ~/code/gobrave-tools/Dotfiles/paths.sh

alias ls="ls -la"
alias p="sudo purge"
alias py="python $@"
alias dev="cd ~/Development"
alias tmp="cd ~/tmp"
alias art="php artisan $@"
alias s="servant $@"

function gop {
  cd ~/Development/go/src/github.com/lannor/$1
}

function acp {
  git add . -A; git commit -m "$1"; git push origin;
}

function git-af {
  git show --pretty="format:" --name-only $1
}

function pf {
  open -a "Path Finder" "$1"
}

function pgdb {
  # pg_ctl -D /usr/local/var/postgresql/ -l /usr/local/var/postgresql/server.log $1
  postgres -D /usr/local/var/postgres
}

[[ -s /Users/emil/.nvm/nvm.sh ]] && . /Users/emil/.nvm/nvm.sh # This loads NVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*-19.8

export GOPATH=$HOME/Development/go
export PATH=$PATH:$GOPATH/bin
alias gohome="cd $GOPATH/src/github.com/lannor"
