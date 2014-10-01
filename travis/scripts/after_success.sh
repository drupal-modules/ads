#!/bin/sh
# Execute this script on Travis CI after_success.
# See: .travis.yml for more details.
cd $SRCDIR && ./scripts/drupal.sh http://ads.server/ | html2text
pwd && $DRUSH status-report --severity=2
