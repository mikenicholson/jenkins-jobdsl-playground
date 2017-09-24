#!/bin/bash

user_command="$1"

case "${user_command}" in
    up)
        docker-compose up --build --force-recreate -d
        sleep 10
        # TODO plant seed job
        ;;
    down)
        docker-compose down 
        ;;
    clean)
        docker-compose down --volumes
        ;;
    replant)
        # TODO
        ;;
    status)
        docker-compose ps
        ;;
    shell)
        docker-compose exec jenkins-dsl-test '/bin/bash'
        ;;
    *)
        echo "$0 up|down|clean|replant|status|shell"
        ;;
esac
