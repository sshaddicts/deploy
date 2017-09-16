#!/usr/bin/env bash

docker-compose pull
docker-compose up -d --force-recreate

curl -X POST https://api.telegram.org/bot425164421:AAF28SLXHQbPJkQ2MJs8CeiSwYbRajWvd_Q/sendMessage -H 'content-type: application/x-www-form-urlencoded' -d 'chat_id=-1001143086398' -d 'text=Deploy on production is completed. \xF0\x9F\x98\x8C'
