#!/bin/sh
# Execute this script on Travis CI after_failure.
# See: .travis.yml for more details.
env
ls -al $TRAVIS_BUILD_DIR $SRCDIR $HOME/*                  # List build files.
$DRUSH status --full && $DRUSH status-report --severity=1 # Check drush version and status report.
cat /etc/ssh/ssh_config ~/.ssh/config ~/.ssh/known_hosts  # Display content of configuration files.
sudo tail /var/log/*.log /var/log/*/*.log /var/ramfs/*.log /var/ramfs/*/*.log
echo "SHOW FULL PROCESSLIST"  | mysql -uroot -proot # Show which MySQL threads are running.
echo "SHOW SESSION VARIABLES" | mysql -uroot -proot # Shows the values of MySQL system variables.
