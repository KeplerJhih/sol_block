
mkdir -p /solana/solana-keygen
./solana-keygen new -o /solana/solana-keygen/validator-keypair.json


solana-validator \
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