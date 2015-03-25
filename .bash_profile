# Store 1000 commands in bash history
export HISTFILESIZE=1000
export HISTSIZE=1000

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

# Fix esc in the terminal
#export LESS="-eirMX"

# Docker - https://github.com/wsargent/docker-cheat-sheet
alias dockercleanoldcontainer="docker ps -a | grep 'weeks ago' | awk '{print \$1}' | xargs docker rm"
alias dockercleancontainer="docker rm -v `docker ps -a -q -f status=exited`"
alias dockerkillrunningcontainers="docker kill $(docker ps -q)"
alias dockercleandanglingimages="docker rmi $(docker images -q -f dangling=true)"
alias dockercleanimages="docker rmi $(docker images -q)"
alias dockerclean="dockercleancontainers && dockercleanimages"
