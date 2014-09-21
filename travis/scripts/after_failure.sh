#!/bin/sh
# Execute this script on Travis CI after_failure.
# See: .travis.yml for more details.
env
ls -al $TRAVIS_BUILD_DIR $SRCDIR $HOME/*                         # List build files.
$DRUSH --version && $DRUSH status --full && $DRUSH status-report # Check drush version and status report.
cat /etc/ssh/ssh_config ~/.ssh/config ~/.ssh/known_hosts         # Display content of configuration files.
sudo tail /var/log/*.log /var/log/*/*.log
echo "SHOW FULL PROCESSLIST" | mysql -uroot -proot
