# 2017/02/24 Display git brach name
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# Loading dotenv
if [ -f ~/.env ]; then
  set -a; eval "$(cat ~/.env <(echo) <(declare -x))"; set +a;
fi

# 2019/04/20 add the 'gp' command.
PS1="\[\033[0;36m\][\u@\h \W\$(__git_ps1)]\\$\[\033[0m\] "
HISTSIZE=50000
HISTFILESIZE=50000
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTIGNORE="h:history:h *:history *:l:ll:ls:ls *"
alias ap='ansible-playbook'
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
alias fcd='cd "$(find . -type d | peco)"'
alias h=history
alias nkfs='nkf -s -Lw --overwrite'
alias nkfu='nkf -w -Lu --overwrite'
alias l='ls -aAlpo'
alias ll='ls -aAlpotr'
alias t='tail -f'
alias tailf='tail -f'
alias tf='terraform'
alias v=vim
alias va=vagrant
alias w=watch
alias wcl='wc -l'
alias i=irb
alias g=git
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias gst='git stash'
alias gl='git log'
alias gp="git pull"
alias gch='git checkout master'
alias gchd='git checkout develop'
alias gpu='git push'
alias gr=gradle
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset ${LOCAL_DB}'
alias myimport='mysql -u root --default-character-set=binary -h localhost ${LOCAL_DB}'
alias r=bin/rails
alias rk=bin/rake
alias rs=bin/rspec
alias vpn-start="scutil --nc start VPN --user ${VPN_USER} --password ${VPN_PASSWORD} --secret ${VPN_PSK}"
alias vpn-stop="scutil --nc stop VPN"

export PATH="$PATH:/usr/local/sbin:/usr/local/bin"

# 2017/04/18 Add by anyenv
if [ -d "$HOME/.anyenv/bin" ]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"
fi

if type "brew" > /dev/null 2>&1; then
  export PATH="$PATH:`brew --prefix openssl`/bin"
fi

if [ -d "$HOME/.cargo/bin" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
fi

if [ -d "$GOPATH/bin" ]; then
  export PATH="$PATH:$GOPATH/bin"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/google-cloud-sdk/path.bash.inc ]; then . ~/google-cloud-sdk/path.bash.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f ~/google-cloud-sdk/completion.bash.inc ]; then . ~/google-cloud-sdk/completion.bash.inc; fi

if type "direnv" > /dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi
