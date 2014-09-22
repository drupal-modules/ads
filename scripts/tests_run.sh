#!/bin/sh
# Run basics Simpletests.
# Usage:
#   ./tests_run.sh http://example.com/
#
CWD="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
PARENT="`dirname $CWD`"

[ -z "$1" ] && echo "Usage: $0 URL [drush_args]" && exit 1
HOST="$1"

DRUSH="drush -r $PARENT/src --uri=$*"
CONCURRENCY=8
TESTS="System"
TEST_ARGS="--php `which php` --url $HOST --verbose --concurrency $CONCURRENCY"

$DRUSH en simpletest
php $PARENT/src/scripts/run-tests.sh $TEST_ARGS $TESTS
