#!/usr/bin/env bash

function docker-down-help {
    printf "(Spins down the Docker environment)";
}

function docker-down() {
    docker compose -f docker-compose.yml -p ansel down;

    return 0;
}
