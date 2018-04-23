
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bind vi to bash
set -o vi

# common alieses
alias lsd="ls -ld .?*"

# github token
export GH_TOKEN="<github token goes here>"

# monolith dir
MON_DIR="~/_work/earnest"

# work alieses
# alias lgs="cd ~/_work/loanpro-gateway-service && git status && code ."
alias mon="cd $MON_DIR && git status && code ."
alias mond="cd ~/_alpha/earnest && git status && code ."
alias loanpro="code ~/_rest/loanpro"
alias edb="code ~/_work/node-earnest-db"
alias board="cd ~/_work/boarding-service && nvm use 8 && git status && code ."

# aws auth
alias sts="~/tools/aws-token.sh --profile default --account e-development --user ksu@earnest.com && aws sqs list-queues"

# db auth
alias dbs="pgauth -e staging -r readwrite -g $GH_TOKEN"
alias dbp="pgauth -e production -r readonly -g $GH_TOKEN"
# alias monconf="code $MON_DIR/config/task-config.js $MON_DIR/config/task-runner-config.development.js $MON_DIR/api/task-runner/server.js"

# app
# alias chrome=/open Application/Google\

export PATH=$PATH:$HOME/tools
export PATH=$PATH:$HOME/apache-maven-3.5.0/bin
# required by maven https://maven.apache.org/install.html
export JAVA_HOME=$(/usr/libexec/java_home)

# required by VSCode Java support https://marketplace.visualstudio.com/items?itemName=redhat.java
export JDK_HOME=$JAVA_HOME

# run bashrc automatically
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Source .bash_prompt if it exists
if [ -r ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

# Source .bash_pgauth if it exists
if [ -r ~/.bash_pgauth ]; then
  . ~/.bash_pgauth
fi

if [ -r ~/.bash_git ]; then
  . ~/.bash_git
fi

if [ -r ~/.bash_jira ]; then
  . ~/.bash_jira
fi

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Add psql to path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

#OPAM configuration
. /Users/koraninsuwannaprasert/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
