#!/bin/sh

curl -i  -H 'Content-Type: application/json' -d @addproduct.json  'localhost:8888/admin/products'
