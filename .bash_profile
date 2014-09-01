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
alias server="clear;cat ~/Games/server/server"
alias eserver="subl ~/Games/server/server && cd ~/Games/server"
alias sshs="subl ~/.ssh/config"

function acp {
  git add . -A; git commit -m "$1"; git push origin;
}

function git-af {
  git show --pretty="format:" --name-only $1
}

function pf {
  open -a "Path Finder" "$1"
}

function packages {
  cd "/Users/emil/Library/Application Support/Sublime Text 2/Packages"
}

function pgdb {
  # pg_ctl -D /usr/local/var/postgresql/ -l /usr/local/var/postgresql/server.log $1
  postgres -D /usr/local/var/postgres
}

[[ -s /Users/emil/.nvm/nvm.sh ]] && . /Users/emil/.nvm/nvm.sh # This loads NVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*-19.8
