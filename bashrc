# set default editor to VIM
export VISUAL=vim
export EDITOR="$VISUAL"

# add current git branch to prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
# Custom bash prompt via kirsle.net/wizards/ps1.html
# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput setaf 7)\]\u@\h: \[$(tput bold)\]\[$(tput setaf 2)\]\w\[$(tput setaf 1)\]\$(parse_git_branch) \\$ \[$(tput sgr0)\]"
