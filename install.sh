#!/usr/bin/zsh

sudo apt update -y && sudo  apt install cmake build-essential zip \
    python3 python3-venv  libpq-dev  git curl wget zsh neovim -y

# install go

wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz

. ~/config/go/env

go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/charmbracelet/crush@latest

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://rsproxy.cn/rustup-init.sh | sh

rustup update
rustup component add  rust-analysis rust-src clippy
rustup target add wasm32-unknown-unknown
rustup target add arm-unknown-linux-gnueabihf 
rustup target add aarch64-unknown-linux-gnu

cargo install bat pay-respects bore-cli bottom cargo-machete koji\
    eza  cargo-update cargo-zigbuild create-tauri-app hex-patch\
    dioxus-cli  fnm git-cliff git-delta ripgrep starship t-rec \
    procs sd tokei zellij just macchina skim  zoxide gping just-lsp \
    trippy pik  hyperfine hurl tlrc cargo-deny cargo-nextest tukai \
    cargo-autodd cargo-debugger presenterm du-dust codesnap-cli ast-grep

cargo install --git https://github.com/bvaisvil/zenith.git

# install node
fnm use 22
fnm default 22
npm install -g @microsoft/inshellisense
npm install -g typescript
npm install --global serve


# install python
python3 -m venv ~/.venv
source ~/.venv/bin/activate
pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
pip3 install -U pgcli mycli poetry 


rm dev.zip  Justfile  README.md install.sh