#
# Puppet recipe to install LAMP environment for ADS distribution.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/apt
#   sudo puppet module install rafaelfc/pear
#   sudo puppet module install puppetlabs-apache

#
# SERVICES
#

# Apache

class apache-setup {
  class { 'apache':
    mpm_module => 'prefork',
  }
}

include apache-setup

include apache::mod::rewrite
include apache::mod::expires
include apache::mod::headers
include apache::mod::php

/*
  You may use this snippet to instantiate virtual host for ADS.

  apache::vhost { 'X.X.X.X':
    port    => '80',
    docroot => '/var/www/ads',
    directories  => [
      { path           => '/var/www/ads',
        allow_override => ['All'],
      },
    ],
  }
*/

# MySQL
package { 'mysql-server' :
 ensure => installed,
}

service { 'mysql' :
  ensure => running,
  require => Package['mysql-server'],
}

# Apache
# FiXME: Error: Duplicate declaration: Service[apache2] is already declared in file /etc/puppet/modules/apache/manifests/service.pp:34; cannot redeclare
#service { 'apache2' :
#  ensure  => running,
#  enable  => true,
#  require => Package['apache2'],
#}

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
pear::package { "Console_Table": }

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

#
# TOOLS
#
# development packages
$packages_dev = [ 'git' ]
package { $packages_dev : 
  ensure => installed,
}
