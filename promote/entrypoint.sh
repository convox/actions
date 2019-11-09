#!/bin/sh

echo "Promoting Release $INPUT_RELEASE"
export CONVOX_PASSWORD=$INPUT_PASSWORD
export CONVOX_HOST=$INPUT_HOST
export CONVOX_RACK=$INPUT_RACK
convox releases promote $INPUT_RELEASE --app $INPUT_APP
