#
# Puppet recipe to install LAMP environment for ADS distribution.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/apt
#   sudo puppet module install rafaelfc/pear
#   sudo puppet module install rafaelfc/phpqatools

#
# SERVICES
#

# Apache
package { 'apache2' :
  ensure => installed,
}

service { 'apache2' :
  ensure => running,
  require => Package['apache2'],
}

# MySQL
package { 'mysql-server' :
 ensure => installed,
}

service { 'mysql' :
  ensure => running,
  require => Package['mysql-server'],
}

# PHP packages
$packages_php = [ 'libapache2-mod-php5', 'php5', 'php5-cli', 'php5-common', 'php5-curl', 'php5-gd', 'php5-mysql', 'php-pear', ]

package { $packages_php :
  ensure => installed,
  require => Package['apache2'],
  notify => Service['apache2']
}

#
# PHP PEAR packages
#

include pear

# PEAR
pear::package { "PEAR": }

# Phing
pear::package { "Phing":
  version => "2.7.0",
  repository => "pear.phing.info",
  require => Pear::Package["PEAR"],
}

# Drush
pear::package { "drush":
  version => "6.2.0",
  repository => "pear.drush.org",
  require => Pear::Package["PEAR"],
}

#
# TOOLS
#
# development packages
$packages_dev = [ 'git', 'phing' ]
package { $packages_dev : 
  ensure => installed,
}

