#!/bin/sh

curl -i -H 'Content-Type: application/json' -d @addmember.json  'localhost:8888/api/member'
