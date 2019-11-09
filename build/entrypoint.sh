#!/bin/sh
echo "Building"
export CONVOX_PASSWORD=$INPUT_PASSWORD
export CONVOX_HOST=$INPUT_HOST
export CONVOX_RACK=$INPUT_RACK
release_id=$(convox build --app $INPUT_APP --id)
echo ::set-output name=release_id::$release_id
