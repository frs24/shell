# -*- mode: Shell-script-*-
#
# General aliases
#

# most used commands
alias rank="history | awk '{a[\$2]++}END{for(i in a){print a[i] \" \" i}}' | sort -rn | head"

# number of non-hidden files in current dir
alias filec='ls | wc -l'

# less: allow color
alias less='less -r'

# edit file with set editor
alias edit="$EDITOR"

# python
alias py='python'
alias ip='ipython'

# ruby
alias rb='ruby'
alias irb='irb'

# tag generation
alias pytags='gettags py'
alias javatags='gettags java'
alias gettags='ffe $1 | xargs etags -a -f TAGS'

# unified diff
alias udiff='diff -u'

# current year
alias year='date +%Y'

# Show running processes, sorted
alias tu='top -o cpu' # cpu
alias tm='top -o vsize' # memory