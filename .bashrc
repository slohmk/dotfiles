# .bashrc file for local user lohmk
# Author: Steven Loh
# Last Updated: 12 February 2015
#
# Change Log:
# 12Feb15 - Added alias ll to override default behaviour of showing dotfiles.
# 12Feb15 - Set vim as the default text editor
#
# NOTE:
# Remember to reload this rc file after editing for changes to take effect,
# by doing command 'source ~/.bashrc'

# Override default ll alias to hide dot files
alias ll='ls -l'

# Use vim as the default text editor
export VISUAL=vim
export EDITOR=vim
