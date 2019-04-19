# 2017/02/24 Display git brach name
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
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
alias gp="git nc; git push"
alias gch='git checkout master'
alias gchd='git checkout develop'
alias gpu='git pull'
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias sublime='open -a /Applications/Sublime\ Text.app'
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset applepie_api_development'


# 2019/04/18 Modify name for brew and github token
if [ -f e/.api_token ];then
  source ~/.api_token
fi

# 2017/04/18 Add by anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
#if [ -f ~/.anyenv/envs/pyenv/shims/virtualenvwrapper.sh ]; then
#    export WORKON_HOME=$HOME/.virtualenvs
#    source ~/.anyenv/envs/pyenv/shims/virtualenvwrapper.sh
#fi

# 2017/04/18 brew path
export PATH="$PATH:/usr/local/bin"
export PATH="`brew --prefix openssl`/bin:$PATH"
export PATH="`brew --prefix mysql@5.7`/bin:$PATH"

# 2017/4/26 Add rust
export PATH="$HOME/.cargo/bin:$PATH"

# 2018/01/23 Add google cloud console
source /projects/google/google-cloud-sdk/completion.bash.inc
source /projects/google/google-cloud-sdk/path.bash.inc
