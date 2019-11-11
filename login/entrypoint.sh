#!/bin/sh
echo "Building"
::set-env name=CONVOX_PASSWORD::$INPUT_PASSWORD
::set-env name=CONVOX_HOST::$INPUT_HOST
convox login $INPUT_HOST