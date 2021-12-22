#!/usr/bin/env bash

function docker-create-databases-help() {
    printf "(Creates databases)";
}

function docker-create-databases() {
    chmod +x docker/bin/*;

    docker/bin/create-databases.sh;

    return 0;
}
