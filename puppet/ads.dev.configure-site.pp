#
# Puppet recipe to configure fully functional ADS site, i.e. vhost, mysql configuration.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs-apache

#
# SERVICES
#

# Apache
# Some examples:
#   http://kodingnotes.wordpress.com/tag/puppet-script/

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

apache::vhost { 'ads.server':
  port    => '80',

  # @TODO: Currently we're using static path for docroot, we need to find a way
  # to pass SRCDIR environment variable into puppet.
  docroot => '/var/www/ads',

  directories  => [
    { path           => '/var/www/ads',
      allow_override => ['All'],
    },
  ],
}

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

mysql::db { 'travis_ads_test':
  user     => 'travis_ads_test',
  password => 'travis_ads_test',
  host     => 'localhost',
  charset  => 'utf8',
  collate  => 'utf8_general_ci',
  grant    => ['ALL'],
}

# MySQL server config subclass.
# Restarts MySQL service when /etc/mysql/my.cnf changes.
class ads::mysql inherits ::mysql::server::config {
  $options = mysql_deepmerge( $::mysql::server::options, $::mysql_hardening::puppetlabs::new_options )
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
