#!/bin/sh
if [ -z "$CONVOX_PASSWORD"]
then
    echo "Convox password must be set"
else
    echo "Building"
    export CONVOX_HOST=$INPUT_CONVOX_HOST
    export CONVOX_RACK=$INPUT_CONVOX_RACK
    release_id=$(convox build --app $INPUT_CONVOX_APP --id)
    echo ::set-output name=release_id::$release_id
fi