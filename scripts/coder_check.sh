#!/bin/sh
CWD="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
DRUSH="drush -y -r $CWD/../src $*"
MODULES="ads"

$DRUSH en coder
time $DRUSH coder --active --no-empty --security --critical $MODULES
