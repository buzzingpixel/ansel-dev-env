#!/usr/bin/env bash

function docker-compose-config-help() {
    printf "(Displays the docker-compose config)";
}

function docker-compose-config() {
    docker compose -f docker-compose.yml config;

    return 0;
}
