#!/bin/bash

source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
