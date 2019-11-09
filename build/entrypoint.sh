#!/bin/sh
echo "Building"
export CONVOX_PASSWORD=$INPUT_PASSWORD
export CONVOX_HOST=$INPUT_HOST
export CONVOX_RACK=$INPUT_RACK
release=$(convox build --app $INPUT_APP --id)
echo ::set-output name=release::$release
