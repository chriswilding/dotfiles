export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

# bin
export PATH="$HOME/bin:$PATH"

# Go
export GOPATH="$HOME/Development/go"
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# GPG2
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"

# iterm2
test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"

# LaTeX
export PATH="/usr/local/texlive/2016basic/bin/x86_64-darwin:$PATH"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Scala
export PATH="$HOME/scala-2.12.1/bin:$PATH"
