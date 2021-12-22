#!/usr/bin/env bash

function container-web-help() {
    printf "[some_command] (Execute command in \`web\` container. Empty argument starts a bash session)";
}

function container-web() {
    if [ -t 0 ]; then
        interactiveArgs='-it';
    else
        interactiveArgs='';
    fi

    printf "${Yellow}You're working inside the 'web' container of this project.${Reset}\n";

    if [[ -z "${allArgsExceptFirst}" ]]; then
        printf "${Yellow}Remember to 'exit' when you're done.${Reset}\n";
        docker exec ${interactiveArgs} -e XDEBUG_MODE=off -w /opt/project ansel-dev-env-web bash;
    else
        docker exec ${interactiveArgs} -w /opt/project ansel-dev-env-web bash -c "XDEBUG_MODE=off ${allArgsExceptFirst}";
    fi

    return 0;
}
