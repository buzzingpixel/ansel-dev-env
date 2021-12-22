#!/usr/bin/env bash

function container-composer-help() {
    printf "[some_command] (Execute command in \`composer\` image. Empty argument starts a bash session)";
}

function container-composer() {
    if [ -t 0 ]; then
        interactiveArgs='-it';
    else
        interactiveArgs='';
    fi

    if [[ -z "${allArgsExceptFirst}" ]]; then
        printf "${Yellow}Remember to 'exit' when you're done.${Reset}\n";
        docker run ${interactiveArgs} \
            --name ansel-composer \
            -v ${PWD}:/app \
            -w /app \
            ansel-dev-env-php74 bash;
    else
        docker run ${interactiveArgs} \
            --name ansel-composer \
            -v ${PWD}:/app \
            -w /app \
            ansel-dev-env-php74 bash -c "${allArgsExceptFirst}";
    fi

    docker rm ansel-composer >/dev/null 2>&1;

    return 0;
}
