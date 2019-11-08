#!/bin/sh
if [ -z "$CONVOX_PASSWORD"]
then
    echo "Convox password must be set"
else
    echo "Building"
    export CONVOX_HOST=$INPUT_CONVOX_HOST
    export CONVOX_RACK=$INPUT_CONVOX_RACK
    convox releases promote --app $INPUT_CONVOX_APP --release=$INPUT_RELEASE_ID
fi