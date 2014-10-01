#!/bin/sh
# Run basics Simpletests.
# Usage:
#   ./tests_run.sh http://example.com/ [test_args]
#
CWD="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
PARENT="`dirname $CWD`"

[ -z "$1" ] && echo "Usage: $0 URL [test_args]" && exit 1
HOST="$1"

DRUSH="drush --yes -r $PARENT/src --uri=$HOST"
CONCURRENCY=8
TESTS="System"
TEST_ARGS="--php `which php` --verbose --concurrency $CONCURRENCY --url $*"

$DRUSH dis dblog # Fixes "MySQL server has gone away" error.
$DRUSH en simpletest
cd $PARENT/src/ && php ./scripts/run-tests.sh $TEST_ARGS $TESTS
