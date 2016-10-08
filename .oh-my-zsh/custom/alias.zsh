alias mvnva="mvn validate"
alias mvnp="mvn package"
alias mvncp="mvn clean package"

alias gloh="glo |head"

# rebind "emacs" plugin aliases
unalias te
alias e="$EMACS_PLUGIN_LAUNCHER -nw"
alias em="$EMACS_PLUGIN_LAUNCHER --no-wait"

# YADM aliases
alias ya='yadm add -u'
alias yc='yadm commit -v'
alias yc!='yadm commit -v --amend'
alias ycn!='yadm commit -v --no-edit --amend'
alias yd='yadm diff'
alias ydca='yadm diff --cached'
alias ydw='yadm diff --word-diff'
alias yf='yadm fetch'
alias yg='yadm gui citool'
alias yga='yadm gui citool --amend'
alias yl='yadm pull'
alias ylg='yadm log --stat'
alias ylgp='yadm log --stat -p'
alias ylgg='yadm log --graph'
alias ylgga='yadm log --graph --decorate --all'
alias ylgm='yadm log --graph --max-count=10'
alias ylo='yadm log --oneline --decorate'
alias ylol="yadm log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ylola="yadm log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias ylog='yadm log --oneline --decorate --graph'
alias yloga='yadm log --oneline --decorate --graph --all'
alias yp='yadm push'
alias ypu='yadm push upstream'
alias yrb='yadm rebase'
alias yrba='yadm rebase --abort'
alias yrbc='yadm rebase --continue'
alias yrbi='yadm rebase -i'
alias yrbm='yadm rebase master'
alias yrbs='yadm rebase --skip'
alias ysb='yadm status -sb'
alias yss='yadm status -s'
alias yst='yadm status'
alias ysta='yadm stash save'
alias ystaa='yadm stash apply'
alias ystd='yadm stash drop'
alias ystl='yadm stash list'
alias ystp='yadm stash pop'
alias ysts='yadm stash show --text'
alias yup='yadm pull --rebase'
alias yupv='yadm pull --rebase -v'
alias ywch='yadm whatchanged -p --abbrev-commit --pretty=medium'
