#------------------------------------------------------------------------------
# Custom bash profile stuff ...
#------------------------------------------------------------------------------

readonly INCLUDE_PATH=~/bash_profile

export VISUAL=vim
export EDITOR="$VISUAL"

source "$INCLUDE_PATH"/vars
source "$INCLUDE_PATH"/util
source "$INCLUDE_PATH"/aliases
source "$INCLUDE_PATH"/path

# enable color support of ls and also add handy aliases
export LS_COLORS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Include git aware prompt
source "$INCLUDE_PATH"/lib/git_aware_prompt/main
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
