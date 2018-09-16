# 2017/02/24 Display git brach name
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# 2018/09/15 add the gchd command.
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
alias gch='git checkout master'
alias gchd='git checkout develop'
alias gpu='git pull'
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias sublime='open -a /Applications/Sublime\ Text.app'
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset '

# 2015/06/04 Add for brew search
if [ -f e/.brew_github_api_token ];then
  source ~/.brew_github_api_token
fi

# 2017/04/18 Add by anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# 2017/04/18 brew path
#export PATH="$PATH:`brew --prefix mysql@5.5`/bin"
#export PATH="$PATH:`brew --prefix openssl@1.1`/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then source '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then source '~/google-cloud-sdk/completion.bash.inc'; fi
