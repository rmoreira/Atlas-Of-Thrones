#!/usr/bin/env bash
wget https://cdn.patricktriest.com/atlas-of-thrones/atlas_of_thrones.sql
psql -U $DATABASE_USER -h $DATABASE_HOST -f ./psql_setup/db_init_dev.sql
psql -U $DATABASE_USER -h $DATABASE_HOST atlas_of_thrones < atlas_of_thrones.sql
