#!/bin/bash

mongoimport \
  --host localhost \
  --db ecommerce \
  --collection products \
  --type json \
  --jsonArray \
  --file /docker-entrypoint-initdb.d/products.json;