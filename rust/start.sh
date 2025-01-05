#!/bin/bash

# install rust 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# 編譯 Solana
git clone https://github.com/solana-labs/solana.git
cd solana
cargo build --release

