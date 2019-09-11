#!/bin/sh
if [ -z "$CONVOX_PASSWORD"]
then
    echo "Convox password must be set"
else
    echo "Deploying"
    convox deploy --app $CONVOX_APP
fi