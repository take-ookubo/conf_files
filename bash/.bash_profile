# 2017/02/24 Display git brach name
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# Loading dotenv
if [ -f ~/.env ]; then
  set -a; eval "$(cat .env <(echo) <(declare -x))"; set +a;
fi

# 2019/04/20 add the 'gp' command.
PS1="\[\033[0;35m\][\u@\h \W\$(__git_ps1)]\\$\[\033[0m\] "
HISTSIZE=500000
HISTFILESIZE=500000
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTIGNORE="h:history:h *:history *:l:ll:ls:ls *"
alias b='bundle exec'
alias bs='bundle exec ruby script/server'
alias brs='bundle exec rails server'
alias bc='bundle exec ruby script/console'
alias brc='bundle exec rails console'
alias c=cat
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias e=exit
alias d=docker
alias dc=docker-compose
alias h=history
alias nkfs='nkf -s -Lw --overwrite'
alias nkfu='nkf -w -Lu --overwrite'
alias l='ls -aAlpo'
alias ll='ls -aAlpotr'
alias t='tail -f'
alias tailf='tail -f'
alias v=vim
alias w=watch
alias wcl='wc -l'
alias i=irb
alias g=git
alias gp="git nc; git push"
alias gch='git checkout master'
alias gchd='git checkout develop'
alias gpu='git pull'
alias gr=gradle
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias sublime='open -a /Applications/Sublime\ Text.app'
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset ${LOCAL_DB}'
alias myimport='mysql -u root --default-character-set=binary -h localhost ${LOCAL_DB}'
alias r=bin/rails
alias rk=bin/rake
alias rs=bin/rspec

# 2017/04/18 Add by anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# 2018/01/23 Add google cloud console
source /projects/google/google-cloud-sdk/completion.bash.inc
source /projects/google/google-cloud-sdk/path.bash.inc
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=~/.sdkman
[[ -s ~/.sdkman/bin/sdkman-init.sh ]] && source ~/.sdkman/bin/sdkman-init.sh
