#!/bin/sh
# Coder Review Integration with Drush
# Execute Coder reviews on a given modules, using Drupal Coding Standard definitions.
#
# See:
#  - https://www.genuineinteractive.com/blog/blog-posts/genuine-thoughts/enforcing-drupal-coding-standards-software-versioning-process/
CWD="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
DRUSH="drush -y -r $CWD/../src $*"
MODULES="ads"
CODER_ARGS="--active --no-empty --critical --security --sql --style --i18n --comment --sniffer --druplart"

$DRUSH en coder
$DRUSH coder $CODER_ARGS $MODULES
