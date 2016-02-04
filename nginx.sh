#!/usr/bin/env bash

case $1 in
    stop )
        echo [ Stoping nginx service... ]
        pid=$(cat /var/run/nginx.pid)
        kill -SIGTERM $pid
        ;;
    start )
        echo [ Starting nginx service... ]
        /usr/sbin/nginx
        ;;
esac
