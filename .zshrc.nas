export ZSH=$HOME/.oh-my-zsh
export SSH_KEY_PATH=~/.ssh/rsa_id
export UPDATE_ZSH_DAYS=1
export EDITOR='/opt/bin/nano'
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export JAVA_HOME=/opt/QJDK14
export PATH=$HOME/bin:/usr/local/bin:/opt/bin:$JAVA_HOME/bin:$PATH

ZSH_THEME='robbyrussell'
# ZSH_THEME_RANDOM_CANDIDATES=( 'robbyrussell' 'agnoster' )
HYPHEN_INSENSITIVE=true
ENABLE_CORRECTION=false
OMPLETION_WAITING_DOTS=true
DISABLE_UNTRACKED_FILES_DIRTY=true
DISABLE_UPDATE_PROMPT=true
plugins=(
  docker
  docker-compose
  docker-machine
  git
  ng
  node
  npm
)
HIST_STAMPS='yyyy.mm.dd'

source $ZSH/oh-my-zsh.sh

alias cls='clear'
alias zshconfig='nano ~/.zshrc'