#!/bin/bash

mongoimport \
  --host localhost \
  --db ecommerce \
  --collection products \
  --type json \
  --jsonArray \
  --file /docker-entrypoint-initdb.d/products.json;

mongoimport \
  --host localhost \
  --db hospital \
  --collection prescriptions \
  --type json \
  --jsonArray \
  --file /docker-entrypoint-initdb.d/prescriptions.json;