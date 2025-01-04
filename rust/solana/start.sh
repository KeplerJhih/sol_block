#!/bin/bash

# 應用系統參數
sysctl -p

# 如果密鑰對不存在，則創建
if [ ! -f /solana/solana-keygen/validator-keypair.json ]; then
    solana-keygen new -o /solana/solana-keygen/validator-keypair.json --no-bip39-passphrase
fi

# 編譯 Solana
git clone https://github.com/solana-labs/solana.git
cd solana
cargo build --release

# 運行驗證節點
./target/release/solana-validator \
    --identity /solana/solana-keygen/validator-keypair.json \
    --no-voting \
    --no-wait-for-vote-to-start-leader \
    --rpc-port 8899 \
    --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
    --ledger /solana/ledger \
    --rpc-bind-address 0.0.0.0 \
    --limit-ledger-size 50000000 \
    --accounts-shrink-ratio 0.95 \
    --no-snapshot-fetch \
    --no-genesis-fetch \
    --no-port-check \
    --maximum-local-snapshot-age 500