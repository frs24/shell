# -*- mode: Shell-script-*-
#
# File with environment variables
#

# Configuration that should remain private
[[ -s "${HOME}/.secrets" ]] && source "${HOME}/.secrets"

# Common path
path=(/usr/local/bin /usr/local/sbin /opt/local/bin $path ~/bin)
manpath=($manpath /opt/local/share/man)
infopath=($infopath /opt/local/share/info)

# Edit with emacs
export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"
export EMACS_DIR="${HOME}/.emacs.d"

# Folders with libraries for some languages
export AWK_FUNCS=${SHELL_DIR}/awk/lib
export PYTHON_FUNCS=${SHELL_DIR}/python

# Folder with hooks for git
export GIT_HOOKS=${SHELL_DIR}/git/hooks

# Log directory access variables
export DIRLOGSDB=~/.dirlogsdb
export LASTDIR=/

# Avoid annoying completion problems when ssh'ing to a machine with a
# different locale
unset LC_CTYPE

workspaces=(~/workspace ~/Documents/workspace)
for workspace in $workspaces ; do
    if [ -d $workspace ] ; then
        export WORKSPACE=$workspace
        break
    fi
done
