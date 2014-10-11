# Store 1000 commands in bash history
export HISTFILESIZE=1000
export HISTSIZE=1000

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

# Docker
alias dockercleancontainers="docker ps -a --no-trunc| grep 'Exit' | awk '{print \$1}' | xargs -L 1 -r docker rm"
alias dockercleanimages="docker images -a --no-trunc | grep none | awk '{print \$3}' | xargs -L 1 -r docker rmi"
alias dockerclean="dockercleancontainers && dockercleanimages"
