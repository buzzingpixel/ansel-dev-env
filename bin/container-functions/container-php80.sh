#!/usr/bin/env bash

function container-php80-help() {
    printf "[some_command] (Execute command in \`php80\` container. Empty argument starts a bash session)";
}

function container-php80() {
    if [ -t 0 ]; then
        interactiveArgs='-it';
    else
        interactiveArgs='';
    fi

    printf "${Yellow}You're working inside the 'php80' container of this project.${Reset}\n";

    if [[ -z "${allArgsExceptFirst}" ]]; then
        printf "${Yellow}Remember to 'exit' when you're done.${Reset}\n";
        docker exec ${interactiveArgs} -e XDEBUG_MODE=off -w /opt/project ansel-dev-env-php80 bash;
    else
        docker exec ${interactiveArgs} -w /opt/project ansel-dev-env-php80 bash -c "XDEBUG_MODE=off ${allArgsExceptFirst}";
    fi

    return 0;
}
