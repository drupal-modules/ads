#!/bin/sh
# Script to update all git repositories to the recent version.

CWD=$(dirname $0)
PARENT="`dirname $CWD`"
find $PARENT -name .git -type d -print0 | xargs -0 -L1 -I% -P4 sh -c 'cd -P -- "$(dirname -- "%")/" && pwd -P && git pull'
