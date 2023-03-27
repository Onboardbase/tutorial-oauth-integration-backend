#!/bin/bash

yarn

yarn global add @onboardbase/cli

ONBOARDBASE_TOKEN=$1
if [[ -z "$ONBOARDBASE_TOKEN" ]]; then
    echo "Please provide an Onboardbase token"
    exit 1
fi
onboardbase config:set --token $ONBOARDBASE_TOKEN

onboardbase run "yarn start" -p oauth-project -e development
