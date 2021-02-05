
export EDITOR=vi

export PS1='[\u@\h \w]$ '

if [ -z ${USER_PATH_ADDITIONS} ]; then

   export USER_PATH_ADDITIONS=~/code/scripts:\
~/code/python:\
~/code/go/bin:\
~/.local/bin:\
~/.npm-global/bin:\
~/.cabal/bin:\
/usr/local/google_appengine

   export PATH=${USER_PATH_ADDITIONS}:${PATH}
fi

export GOPATH=${HOME}/code/go


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
