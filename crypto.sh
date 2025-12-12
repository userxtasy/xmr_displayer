btc=$(/usr/bin/curl -s -H "User-Agent: Mozilla/5.0" \
    "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=eur,usd")
xmr=$(/usr/bin/curl -s -H "User-Agent: Mozilla/5.0" \
    "https://api.coingecko.com/api/v3/simple/price?ids=monero&vs_currencies=eur,usd")

eur_btc=$(echo "$btc" | /usr/bin/jq -r '.bitcoin.eur')
usd_btc=$(echo "$btc" | /usr/bin/jq -r '.bitcoin.usd')
eur_xmr=$(echo "$xmr" | /usr/bin/jq -r '.monero.eur')
usd_xmr=$(echo "$xmr" | /usr/bin/jq -r '.monero.usd')

echo -n " ${eur_btc} € [${usd_btc} $]  ${eur_xmr} € [${usd_xmr} $]"
