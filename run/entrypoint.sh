#!/bin/sh
echo "Running command"
export CONVOX_PASSWORD=$INPUT_PASSWORD
export CONVOX_HOST=$INPUT_HOST
export CONVOX_RACK=$INPUT_RACK
convox run $INPUT_SERVICE "$INPUT_COMMAND" --release $INPUT_RELEASE --app $INPUT_APP --rack $INPUT_RACK
