#!/bin/sh
if [ -z "$CONVOX_PASSWORD"]
then
    echo "Convox password must be set"
else
    echo "Deploying"
    export CONVOX_HOST=$INPUT_CONVOX_HOST
    export CONVOX_RACK=$INPUT_CONVOX_RACK
    convox deploy --app $INPUT_CONVOX_APP
fi