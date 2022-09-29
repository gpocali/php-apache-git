#!/bin/bash

if [[ "${GIT_REPOSITORY}" != "" ]]; then
    if [ -e /git ]; then
        rm -r /git
    fi
    if [[ "${GIT_BRANCH}" != "" ]]; then
        branch="-b ${GIT_BRANCH} "
    else
        branch=""
    fi
    if [ -e /run/secrets/php-apache-web-token ]; then
        token="$(cat /run/secrets/php-apache-web-token | tr)@"
    elif [[ "${GIT_TOKEN}" != "" ]]; then
        token="${GIT_TOKEN}@"
    else
        token=""
    fi
    cd /
    git clone ${branch}https://${token}${GIT_REPOSITORY} /git
    cd /git
    rm -r /var/www/html
    if [[ "${GIT_DIRECTORY}" != "" ]]; then
        directory="/${GIT_DIRECTORY}"
    else
        directory=""
    fi
    ln -s /git${directory} /var/www/html
else
    echo "Environmental Variable GIT_REPOSITORY Not Defined."
fi

exit 0
