#!/bin/sh
echo "Setting login credentials"
echo ::set-env name=CONVOX_PASSWORD::$INPUT_PASSWORD
echo ::set-env name=CONVOX_HOST::$INPUT_HOST