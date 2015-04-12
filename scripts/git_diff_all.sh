#!/bin/sh
# Script to check code differences for all git repositories recursively (without using pager).

#CWD=$(dirname $0)
#PARENT="`dirname $CWD`"
find . -name .git -type d -print0 | xargs -0 -L1 -I% -P4 sh -c 'cd -P -- "$(dirname -- "%")/" && pwd -P && git --no-pager diff'
