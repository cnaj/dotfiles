# This file holds settings for all (interactive and non-interactive)
# shells and will be read in first.

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# security sensitive access tokens kept in different file
if [[ -f ~/.tokens.sh ]]; then
    source ~/.tokens.sh
fi

# rust stuff
if [[ -d $HOME/.cargo/bin ]]; then
    export PATH=$HOME/.cargo/bin:$PATH
fi

if [[ -d $HOME/src/rust-lang/rust/src ]]; then
    export RUST_SRC_PATH=$HOME/src/rust-lang/rust/src
fi
