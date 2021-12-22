#!/usr/bin/env bash

function docker-up-help() {
    printf "(Brings Docker environment online)";
}

function docker-up() {
    docker compose -f docker-compose.yml -p ansel up -d;

    docker exec ansel-dev-env-php81 bash -c "chmod -R 0777 /opt/project/Craft/public/cpresources;";
    docker exec ansel-dev-env-php81 bash -c "chmod -R 0777 /opt/project/Craft/public/uploads;";
    docker exec ansel-dev-env-php81 bash -c "chmod -R 0777 /opt/project/Craft/storage;";
    docker exec ansel-dev-env-php81 bash -c "chmod -R 0777 /opt/project/ExpressionEngine/public/uploads;";
    docker exec ansel-dev-env-php81 bash -c "chmod -R 0777 /opt/project/ExpressionEngine/system/user/cache;";
    docker exec ansel-dev-env-php81 bash -c "chmod -R 0666 /opt/project/ExpressionEngine/system/user/config/config.php";

    return 0;
}
