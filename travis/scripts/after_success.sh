#!/bin/sh
# Execute this script on Travis CI after_success.
# See: .travis.yml for more details.
$SRCDIR/scripts/drupal.sh http://ads.localhost/ | html2text
pwd && $DRUSH status-report --severity=2
