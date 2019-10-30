# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ldir='ls -d */'
    alias ladir='ls -Ap | grep /$'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls -CF'
alias lf='ls -p | grep -v /'
alias laf='ls -ap | grep -v /'

# cd aliases
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cd_up() { cd $(printf "%0.s../" $(seq 1 $1)); }
alias 'cd..'='cd_up'
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

# python aliases
alias py=python
alias py2=python2
alias py3=python3
alias pdb='/usr/bin/env python -m pdb'
alias pym='python -m'
alias pyc='python -c'
alias pys='python3 -m http.server'
alias jn='jupyter notebook'

alias gdrive='gdrive-linux-x64'

# du aliases
alias du1='du -h --max-depth=1'
alias dus='du -hs'
alias du0='du -h --max-depth=0'
