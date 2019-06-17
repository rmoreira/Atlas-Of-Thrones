#!/usr/bin/env bash

while true
do
  nc -v -w 1 backend 5000
  if [[ $? -eq 0 ]]
  then
    echo "Connected to backend"
    break
  else
    echo 'Trying to connect to Backend'
    sleep 1
  fi
done

npm run serve
