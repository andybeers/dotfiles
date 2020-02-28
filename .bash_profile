if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

parse_git_branch() {  
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

greeting() {
  figurine hi andy
}

# say hi with figurine
greeting

# Terminal colors
boldYellow="\033[93;1m"
pink="\e[95m"
resetText="\033[m"

export PS1="\[${boldYellow}\]\W\[${pink}\]\$(parse_git_branch)\[${resetText}\]⚡️  "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
# G -- in a long listing, don't print group names
# F -- append character depending on filetype (* for exe, etc)
# h -- print file sizes in readable format
alias ls="ls -GFh"

# Navigation
alias proj="cd ~/Documents/projects"

# mongodb
export PATH=$PATH:~/mongodb/bin
alias gomongo="mongod --dbpath ~/mongodb/data"

# Just for Figurine's sweet rainbow text
export PATH=$PATH:/Applications

# Autocomplete
test -f ~/.git-completion.bash && . $_

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
