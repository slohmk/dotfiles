# .bashrc - For use with gnome-terminal in Fedora systems

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# User specific aliases and functions

# Use vim as the default text editor
export VISUAL=vim
export EDITOR=vim

# Disable GUI popup for authentication
unset SSH_ASKPASS

# Show colours in tree command
alias tree='tree -C'
