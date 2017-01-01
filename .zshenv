export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

# bin
export PATH="$HOME/bin:$PATH"

# Go
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="$HOME/Development/go"

# iterm2
test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"

# LaTeX
export PATH="/usr/local/texlive/2016basic/bin/x86_64-darwin:$PATH"

# nodeenv
eval "$(nodenv init -)"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
