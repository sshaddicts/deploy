#!/usr/bin/env bash

docker-compose stop crossbar
docker-compose stop neuralswarm
docker-compose rm -f crossbar
docker-compose rm -f neuralswarm

function notify {
    curl -X POST https://api.telegram.org/bot425164421:AAF28SLXHQbPJkQ2MJs8CeiSwYbRajWvd_Q/sendMessage -H 'content-type: application/x-www-form-urlencoded' -d 'chat_id=-1001143086398' -d 'text=Deploy on production is completed. 😎'
}

if [[ $HOSTNAME =~ 'vps' ]]
    then
        docker-compose pull
        notify;
fi

docker-compose up -d;