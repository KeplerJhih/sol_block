代辦

https://docs.jito.wtf/lowlatencytxnfeed/


https://utopiaclub.gitbook.io/utopia



/solana-validator \
     --no-voting \
     --no-wait-for-vote-to-start-leader \
     --rpc-port 8899 \
     --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
     --ledger /solana/ledger \
     --rpc-bind-address 0.0.0.0 \
     --full-rpc-api \
     --no-port-check \
     --no-snapshot-fetch \
     --maximum-local-snapshot-age 500 \
     --limit-ledger-size 50000000