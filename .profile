# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

. "$HOME/.cargo/env"
. "$HOME/.config/go/env"

RUSTUP_DIST_SERVER="https://rsproxy.cn"
RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
CARGO_BUILD_JOBS=4