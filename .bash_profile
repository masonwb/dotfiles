# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Git completion
if [ -f /usr/local/sbin/git-completion.bash ]; then
  . /usr/local/sbin/git-completion.bash
fi

# Git prompt
if [ -f /usr/local/sbin/git-prompt.sh ]; then
  . /usr/local/sbin/git-prompt.sh
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/tmp/code-server/bin
CODER_NAME="${CODER_USER_USERNAME}-${CODER_WORKSPACE_NAME}"
PS1="\[\033[31m\]\u@$CODER_NAME \[\033[33m\]\w\[\033[32m\]\$(__git_ps1)\[\033[00m\] > "

export PATH CODER_NAME PS1

alias c='clear'
alias k='kubectl'
alias code='code-server'
alias profile='code ~/.bashrc'
alias sprofile='source ~/.bashrc'
