#
# Puppet recipe to install packages required by Travis when installing ADS distribution.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/apt
#   sudo puppet module install rafaelfc/pear

# Python Software Properties.
package { 'python-software-properties' :
 ensure => installed,
}

# PHP packages
$packages_php = [ 'php5', 'php5-cli', 'php5-common', 'php5-curl', 'php5-gd', 'php5-mysql', 'php-pear', ]

package { $packages_php :
  ensure => installed,
}

# PHP: Including custom php.ini
exec { 'php-ini' :
  command => "phpenv config-add php.ini",
  path => ["/bin", "/usr/bin"],
}

#
# Postfix.
#

# Postfix: Installing postfix.
package { 'postfix' :
 ensure => installed,
}

# Postfix: Smtp-sink.
exec { 'smtp-sink' :
  command => "smtp-sink -d \"%d.%H.%M.%S\" localhost:2500 1000 &",
  path => ["/bin", "/usr/bin", "/usr/sbin"],
}

# Postfix: Disabling sendmail?
exec { 'disable-sendmail' :
  command => "echo -e '#!/usr/bin/env bash\nexit 0' | sudo tee /usr/sbin/sendmail",
  path => ["/bin", "/usr/bin"],
}

# Postfix: Configuring sendmail.
exec { 'configure-sendmail' :
  command => "echo 'sendmail_path = \"/usr/sbin/sendmail -t -i \"' | sudo tee \"/home/travis/.phpenv/versions/`php -i | grep \"PHP Version\" | head -n 1 | grep -o -P '\\d+\\.\\d+\\.\\d+.*'`/etc/conf.d/sendmail.ini\"",
  path => ["/bin", "/usr/bin"],
}

# Postfix start.
service { 'postfix' :
  ensure => running,
  require => Package['postfix'],
}

# Install a Ruby Gem.
package { 'puppet-module':
  ensure   => 'installed',
  provider => 'gem',
}

#
# PHP PEAR packages
#

include pear

# PEAR
pear::package { "PEAR": }

# PEAR: We'd like to use alpha packages.
exec { 'alpha-pear' :
  command => "pear config-set preferred_state alpha",
  path => ["/bin", "/usr/bin"],
}

# PEAR: Upgrading itself.
exec { 'upgrade-pear' :
  command => "pear upgrade pear",
  path => ["/bin", "/usr/bin"],
}

# PEAR: Configurating temporary directories.
exec { 'pear-cache-1' :
  command => "chmod -R 777 '/tmp/pear'",
  path => ["/bin", "/usr/bin"],
}

exec { 'pear-cache-2' :
  command => "pear config-set cache_dir '/tmp/pear/temp'",
  path => ["/bin", "/usr/bin"],
}

exec { 'drush-lib-chmod' :
  command => "chmod -R 777 /usr/share/php/drush/lib",
  path => ["/bin", "/usr/bin"],
}

# Phing
pear::package { "Phing":
  version => "2.7.0",
  repository => "pear.phing.info",
  require => Pear::Package["PEAR"],
}

# Drush
pear::package { "drush":
  version => "6.2.0.0",
  repository => "pear.drush.org",
  require => Pear::Package["PEAR"],
}
