
export EDITOR=vi

export PS1='[\u@\h \w]\$ '

export GOPATH="${HOME}/code/go"

export USER_PATH_ADDITIONS="${HOME}/code/scripts:\
${HOME}/code/python:\
${GOPATH}/bin:\
${HOME}/.local/bin:\
${HOME}/.npm-global/bin:\
${HOME}/.cabal/bin:\
${HOME}/.cargo/bin"

export PATH="${USER_PATH_ADDITIONS}:${PATH}"

export HISTCONTROL=ignoredups
export HISTIGNORE="clear:history"


export JQ_COLORS="1;30:0;39:0;39:0;39:0;36:1;39:1;39"

# use ls colors
alias ls='ls --color=auto'
test -f ~/.aliases && . ~/.aliases
test -f ~/.functions && . ~/.functions


# DEFINE FUNCTIONS
function set-terminal-title() {
   if [ -z "${1}" ]; then
      echo "no title specified."
   else
      echo -ne "\033]0;$1\007"
   fi
}

if [[ $- =~ "i" ]]; then
   # shell is interactive
   set-terminal-title "bash"
fi

test -f /etc/bash_completion && . /etc/bash_completion
test -f ~/.bash_completions && . ~/.bash_completions

set -o vi
