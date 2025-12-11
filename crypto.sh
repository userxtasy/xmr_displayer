  GNU nano 8.7                                                      .scripts/crypto.sh                                                               
 1 #!/bin/bash
 2
 3 while true; do
 4     btc=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=eur,usd")
 5     xmr=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=monero&vs_currencies=eur,usd")
 6     eur_btc=$(echo $btc | jq -r '.bitcoin.eur')
 7     eur_xmr=$(echo $xmr | jq -r '.monero.eur')
 8     usd_btc=$(echo $btc | jq -r '.bitcoin.usd')
 9     usd_xmr=$(echo $xmr | jq -r '.monero.usd')
10
11     echo " : $eur_btc € [$usd_btc $]  : $eur_xmr € [$usd_xmr $]"
12     sleep 60
13 done
14
15
