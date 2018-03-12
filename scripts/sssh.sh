#!/bin/bash

if [ -z "$1" ]; then
  echo '' && echo 'Please also provide server name as in config file...' &&
  exit 1
fi

retries=0
repeat=true
today=$(date)

while "$repeat"; do
  ((retries+=1)) &&
  echo "Try number $retries..." &&
  today=$(date) &&
  ssh "$@" &&
  repeat=false
  if "$repeat"; then
    sleep 5
  fi
done

echo "Total number of tries: $retries"
echo "Last connection at: $today"
