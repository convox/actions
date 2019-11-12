#!/bin/sh
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
  echo "Promoting Release $RELEASE"
  export CONVOX_RACK=$INPUT_RACK
  convox releases promote $RELEASE --app $INPUT_APP
fi

