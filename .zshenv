export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

# bin
export PATH="$HOME/bin:$PATH"

# Go
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="$HOME/Development/go"

# Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# LaTeX
export PATH="/usr/local/texlive/2015basic/bin/x86_64-darwin:$PATH"

# Node
export PATH="$PATH:./node_modules/.bin/"
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Ruby
eval "$(rbenv init -)"

# Rust
export CARGO_HOME="$HOME/.cargo"
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$HOME/Development/rust/src"

# Visual Studio Code
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
