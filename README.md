代辦

https://docs.jito.wtf/lowlatencytxnfeed/


https://utopiaclub.gitbook.io/utopia



./solana-validator \
     --no-voting \  # 不參與投票
     --no-wait-for-vote-to-start-leader \  # 不等待投票即可開始作為領導者（通常用於非投票節點）
     --rpc-port 8899 \
     --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
     --ledger /solana/ledger \  # 設置賬本存儲的位置
     --rpc-bind-address 0.0.0.0 \
     --full-rpc-api \  # 啟用完整的 RPC API 功能
     --no-port-check \  # 跳過端口可用性檢查
     --no-snapshot-fetch \  # 不從網絡下載快照
     --maximum-local-snapshot-age 500 \  # 本地快照的最大年齡（以槽為單位）
     --limit-ledger-size 50000000 # 限制賬本大小（以槽為單位）