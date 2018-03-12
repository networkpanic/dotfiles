#!/bin/bash
echo "Updated" `date` && curl -s "https://api.coinmarketcap.com/v1/ticker/?limit=${1:-10}" | jq -r '["Rank", "Symbol", "Name", "Price (USD)", "Change (24H)", "Change (1H)", "Market Cap (USD)"], ["----", "-------", "---------------", "----------", "----------", "----------", "-----------"], (.[] | [.rank, .symbol, "💰  " + .name, "$ " + .price_usd, .percent_change_24h + "%", .percent_change_1h + "%", "$ " + .market_cap_usd]) | @tsv' | sed 's/\t/,|,/g' | column -s ',' -t | sed "s/\( -[0-9]*\.[0-9]*%\)/`tput setaf 1`\1`tput sgr0`/g" | sed "s/\( [0-9]*\.[0-9]*%\)/`tput setaf 2`\1`tput sgr0`/g" | sed "1s/\(.*\)/`tput setaf 3`\1`tput sgr0`/g" 
