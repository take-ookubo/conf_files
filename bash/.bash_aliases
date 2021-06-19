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
alias master='git checkout master'
alias sand='git checkout sand'
alias dev='git checkout develop'
alias gpu='git push'
alias gr=gradle
alias excel='open -a /Applications/Microsoft\ Excel.app'
alias mydump='mysqldump -u root --quote-names --flush-logs --add-drop-table --add-locks --create-options --disable-keys --extended-insert --lock-tables --quick --set-charset ${LOCAL_DB}'
alias myimport='mysql -u root --default-character-set=binary -h localhost ${LOCAL_DB}'
alias r=bin/rails
alias rk=bin/rake
alias rs=bin/rspec

# network shorcut
alias gip="curl inet-ip.info"
alias s=ssh
alias ssh-ignorekey='ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no'
alias vpn-start="scutil --nc start VPN --user ${VPN_USER} --password ${VPN_PASSWORD} --secret ${VPN_PSK}"
alias vpn-stop="scutil --nc stop VPN"

# gcloud shortcut
alias gcp_ls="gcloud compute instances list"
alias gcp_ip_ls="gcloud compute addresses list"
alias gcp_fw_ls="gcloud compute firewall-rules list"
alias curl_with_code='curl -w "%{http_code}" -H "Content-Type: application/json"'
alias curl_post='curl -X POST -H "Content-Type: application/json"'
alias curl_post_with_code='curl -w "%{http_code}" -X POST -H "Content-Type: application/json"'

# office infra
alias sg_bounces='curl -X GET "https://api.sendgrid.com/v3/suppression/bounces?start_time=$(date -v -1d +%s)" -H "Authorization: Bearer ${SENDGRID_API_KEY}" -H "Content-Type: application/json"'
alias sg_blocks='curl -X GET "https://api.sendgrid.com/v3/suppression/blocks?start_time=$(date -v -1d +%s)" -H "Authorization: Bearer ${SENDGRID_API_KEY}" -H "Content-Type: application/json"'
