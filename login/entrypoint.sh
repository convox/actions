#!/bin/sh
echo "Building"
export CONVOX_PASSWORD=$INPUT_PASSWORD
echo ::set-env name=CONVOX_PASSWORD::$INPUT_PASSWORD
echo ::set-env name=CONVOX_HOST::$INPUT_HOST
convox login $INPUT_HOST