
export EDITOR=vi

export PS1='[\u@\h \w]\$ '

export GOPATH="${HOME}/code/go"

export USER_PATH_ADDITIONS="${HOME}/code/scripts:\
${HOME}/code/python:\
${GOPATH}/bin:\
${HOME}/.local/bin:\
${HOME}/.npm-global/bin:\
${HOME}/.cabal/bin"

export PATH="${USER_PATH_ADDITIONS}:${PATH}"



# use ls colors
alias ls='ls --color=auto'
test -f ~/.aliases && . ~/.aliases


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

set -o vi
