#!/bin/sh

curl \
'localhost:8888/admin/products/list?page=1&limit=10&name=bike&category=3'
