#!/bin/sh

echo "Promoting Release $INPUT_RELEASE"
export CONVOX_RACK=$INPUT_RACK
convox releases promote $INPUT_RELEASE --app $INPUT_APP
