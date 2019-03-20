#!/bin/bash

readonly BASH_PROFILE_PATH="$HOME/.bash-profile"

export VISUAL='vim'
export EDITOR="$VISUAL"

source "$BASH_PROFILE_PATH/environment_variables.sh"
source "$BASH_PROFILE_PATH/util"
source "$BASH_PROFILE_PATH/aliases"
source "$BASH_PROFILE_PATH/path"

readonly OS=$(uname)
if [ "${OS}" = "Darwin" ] ; then
  source "$BASH_PROFILE_PATH/platform/darwin.sh"
fi

# completion
source "$BASH_PROFILE_PATH/completion/git.sh"
source "$BASH_PROFILE_PATH/completion/vagrant.sh"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Include git aware prompt
source "$BASH_PROFILE_PATH/lib/git_aware_prompt/main"
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
