#!/bin/sh
echo "Deploying"
export CONVOX_PASSWORD=$INPUT_PASSWORD
export CONVOX_HOST=$INPUT_HOST
export CONVOX_RACK=$INPUT_RACK
convox deploy --app $INPUT_APP
