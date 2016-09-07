#!/bin/sh

curl -i  -H 'Content-Type: application/json' -d @addcate.json  'localhost:8888/admin/category'
