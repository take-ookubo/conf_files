status --is-interactive; and source (anyenv init -|psub)

alias b='bundle exec'
alias bs='bundle exec ruby script/server'
alias brs='bundle exec rails server'
alias bc='bundle exec ruby script/console'
alias brc='bundle exec rails console'
alias c=cat
alias e=exit
alias d=docker
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
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias gst='git stash'
alias gl='git log'
alias gp="git pull"
alias gch='git checkout master'
alias gchd='git checkout develop'
alias gpu='git pull'
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias sublime='open -a /Applications/Sublime\ Text.app'
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset {$LOCAL_DB}'
alias myimport='mysql -u root --default-character-set=binary -h localhost {$LOCAL_DB}'
alias r='bin/rails'
alias rk='bin/rake'
