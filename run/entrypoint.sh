#!/bin/sh
if [ -n "$INPUT_RELEASE" ]
then
 export RELEASE=$INPUT_RELEASE
fi
if [ -z "$RELEASE" ]
then
  echo "Release must either be passed as input or set by running a build step"
  exit 1
else
  echo "Running command"
  export CONVOX_RACK=$INPUT_RACK
  convox run $INPUT_SERVICE "$INPUT_COMMAND" --release $RELEASE --app $INPUT_APP --rack $INPUT_RACK
fi

