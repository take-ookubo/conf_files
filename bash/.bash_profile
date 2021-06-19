# Customizing the Command Prompt

## Display git brach name
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# 2019/04/20 add the 'gp' command.
PS1="\[\033[0;34m\][\u@\h \W\$(__git_ps1)]\\$\[\033[0m\] "
HISTSIZE=50000
HISTFILESIZE=50000
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTIGNORE="h:history:h *:history *:l:ll:ls:ls *"

# Enabling the command

## Enable dotenv
if [ -f ~/.env ]; then
  set -a; eval "$(cat ~/.env <(echo) <(declare -x))"; set +a;
fi

## Enable anyenv
if type "anyenv" > /dev/null 2>&1; then
  eval "$(anyenv init -)"
fi

# Customizing $PATH

export PATH="$PATH:/usr/local/sbin:/usr/local/bin"

if type "brew" > /dev/null 2>&1; then
  export PATH="$PATH:`brew --prefix openssl`/bin"
  export PATH="$PATH:`brew --prefix libpq`/bin"
fi

if type "cargo" > /dev/null 2>&1; then
  cargo_bin=$(dirname `which cargo`)
  export PATH="$PATH:${cargo_bin}"
fi

if [ -d "$GOPATH/bin" ]; then
  export PATH="$PATH:$GOPATH/bin"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc;
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc;
fi

if type "direnv" > /dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi

if [ -d "$HOME/.cargo" ]; then
  export PATH="$PATH:$HOME/.cargo/bin"
  source "$HOME/.cargo/env"
fi

# Required for android development
if [ -d "$HOME/Library/Android/sdk" ]; then
  export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
  # ANDROID_HOME deprecated
  # NOTE: https://developer.android.com/studio/command-line/variables
  export ANDROID_HOME=$ANDROID_SDK_ROOT
  export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools
fi

# Required for android development
if [ -x "/usr/libexec/java_home" ]; then
  export JAVA_HOME=`/usr/libexec/java_home -v "18"`
fi

# Include bash aliases for mac only
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi