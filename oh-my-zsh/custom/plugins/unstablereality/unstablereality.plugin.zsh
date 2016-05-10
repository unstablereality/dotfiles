unalias d
d() { cd ~/Development/$1; }
_d() { _files -W ~/Development -/; }
compdef _d d

p() { cd ~/projects$1; }
_p() { _files -W ~/projects -/; }
compdef _p p

unalias g
g() { cd ~/.gvm/pkgsets/$gvm_go_name/$gvm_pkgset_name/$1; }
_g() { _files -W ~/.gvm/pkgsets/$gvm_go_name/$gvm_pkgset_name -/; }
compdef _g g
h() { ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

# set vim as default editor
EDITOR=/usr/bin/vi

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'
alias echopath="echo -e ${PATH//:/'\\n'}"
alias ll="ls -alF"
alias lh='ls -ah'
alias ls='ls -l --color'

# my heroku aliases
alias hl='heroku logs'
alias hr='heroku run'
alias hc='heroku run rails console'
alias hb='heroku run bash'

# add plugins bin directory to path

export PATH="$(dirname $0)/bin:$PATH"

