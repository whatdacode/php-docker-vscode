#!/bin/bash

set -e

if [ ! -f "composer.json" ]; then
    composer create-project codeigniter4/appstarter .
    sed -i 's/# CI_ENVIRONMENT = production/CI_ENVIRONMENT = development/' env
    sed -i 's/# app.baseURL = '\''/app.baseURL = '\''http:\/\/localhost:8080'\''/' env
fi

exec "$@"