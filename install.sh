#!/usr/bin/zsh

sudo apt update -y && sudo  apt install cmake build-essential zip \
     python3 python3-venv  libpq-dev  git curl wget zsh neovim -y

# install go

wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz

. ~/config/go/env

go install github.com/go-delve/delve/cmd/dlv@latest


# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://rsproxy.cn/rustup-init.sh | sh

rustup update
rustup component add rls rust-analysis rust-src clippy
rustup target add wasm32-unknown-unknown
rustup target add arm-unknown-linux-gnueabihf 
rustup target add aarch64-unknown-linux-gnu

cargo install bat cargo-expand pay-respects bore-cli bottom \
    cargo-leptos cargo-update cargo-zigbuild create-tauri-app \
    dioxus-cli eza fnm git-cliff git-delta ripgrep starship hd \
    procs sd tokei zellij just macchina skim broot zoxide  gping \
    trippy pik  hyperfine hurl
 
cargo install --git https://github.com/bvaisvil/zenith.git

# install node
fnm use 22
fnm default 22
npm install -g @microsoft/inshellisense
npm install -g typescript


# install python
python3 -m venv ~/.venv
source ~/.venv/bin/activate
pip3 install -U pgcli mycli poetry

