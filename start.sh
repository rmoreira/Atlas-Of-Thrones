#!/usr/bin/env bash

while true
do
  nc -v -w 1 postgres 5432
  if [[ $? -eq 0 ]]
  then
    echo "Connected to Postgres"
    break
  else
    echo 'Trying to connect to Postgres'
    sleep 1
  fi
done

chmod +x ./psql_setup/load_db_dev.sh
./psql_setup/load_db_dev.sh
npm run start
