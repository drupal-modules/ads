#
# Puppet recipe to install LAMP environment for ADS distribution.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/apt
#   sudo puppet module install rafaelfc/pear
#   sudo puppet module install puppetlabs/apache

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
# Note: mysql module will manage all the restarts needed after all the configuration changes.
class { '::mysql::server':
  config_file => '/etc/my.cnf',
  root_password    => 'root', # Sets MySQL root password.
  override_options => {
    'mysqld' => {
      'max_connections' => '512',
      'max_allowed_packet' => '256M', # 12M fails on System tests, 32M on country import.
      'log' => 'ON',
      'log_slow_queries' => 'ON',
      'general_log' => 'ON',
      'wait_timeout' => '28800',
    }
  }
}

# MySQL server config subclass.
# Restarts MySQL service when /etc/mysql/my.cnf changes.
class ads::mysql inherits ::mysql::server::config {
  $options = mysql_deepmerge( $::mysql::server::options, $::mysql::server::new_options )
  if defined(File['mysql-config-file']) {
    $mysql_config_filename = 'mysql-config-file'
  } else {
    $mysql_config_filename = $mysql::server::config_file
  }
  File[$mysql_config_filename] {
    content => template('mysql/my.cnf.erb'),
    mode   => '0640',
    notify => Class['mysql::server::service'],
    before => Service["mysql"],
  }
}

class { 'ads::mysql':
}

# Apache
# FiXME: Error: Duplicate declaration: Service[apache2] is already declared in file /etc/puppet/modules/apache/manifests/service.pp:34; cannot redeclare
#service { 'apache2' :
#  ensure  => running,
#  enable  => true,
#  require => Package['apache2'],
#}

# PHP packages
$packages_php = [ 'libapache2-mod-php5', 'php5', 'php5-cli', 'php5-common', 'php5-curl', 'php5-gd', 'php5-mysql', 'php-pear', 'php5-geoip' ]

file { [ "/usr/share/GeoIP" ]:
    ensure => "directory",
    before => Exec['retrieve_geoip_db_gz'],
}

exec { 'retrieve_geoip_db_gz' :
  path => ['/bin', '/sbin', '/usr/bin'], 
  command => "wget -q http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -O /usr/share/GeoIP/GeoIPCity.dat.gz",
  creates => "/usr/share/GeoIP/GeoIPCity.dat.gz",
  before => Exec['unpack_geoip_db_gz'],
}

exec { 'unpack_geoip_db_gz' :
  cwd => "/usr/share/GeoIP/",
  path => ['/bin', '/sbin', '/usr/bin'], 
  command => "gunzip GeoIPCity.dat.gz",
  unless => 'test -f /usr/share/GeoIP/GeoIPCity.dat',
  require => Package['libapache2-mod-geoip'],
}

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
pear::package { "PHP_CodeSniffer": }
pear::package { "VersionControl_Git": }

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
