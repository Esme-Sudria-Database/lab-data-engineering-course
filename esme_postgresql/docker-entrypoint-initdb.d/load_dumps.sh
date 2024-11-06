#!/bin/bash
set -e -x

databases=("ecommerce" "hospital")

for database in "${databases[@]}"; do
  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
      CREATE DATABASE ${database};
      GRANT ALL PRIVILEGES ON DATABASE ${database} TO postgres;
EOSQL

  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "${database}" < /docker-entrypoint-initdb.d/"${database}".sql.dump
done
