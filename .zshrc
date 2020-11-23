export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

export SSH_KEY_PATH=~/.ssh/rsa_id
export UPDATE_ZSH_DAYS=1

ZSH_THEME='random'
HYPHEN_INSENSITIVE=true
ENABLE_CORRECTION=false
OMPLETION_WAITING_DOTS=true
DISABLE_UNTRACKED_FILES_DIRTY=true
DISABLE_UPDATE_PROMPT=true

plugins=(
  chucknorris
  docker
  docker-compose
  docker-machine
  git
  ng
  node
  npm
)
source $ZSH/oh-my-zsh.sh

alias cls='clear'
alias test='cls;npm run test'
alias start='cls;npm run start'
alias verify='cls;npm install;npm run lint;npm run build;npm run test'

# Disable .NET Telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Set the Docker host to the Windows instance
export DOCKER_HOST='tcp://0.0.0.0:2375'

chuck