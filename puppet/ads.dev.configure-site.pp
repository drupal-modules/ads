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

apache::vhost { 'ads.localhost':
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

class { '::mysql::server':
  root_password    => 'root',
  override_options => {
    'mysqld' => {
      'max_connections' => '512',
      'max_allowed_packet' => '12M'
    }
  },
  restart => true
}

# MySQL
#service { 'mysql':
#  ensure => running,
#  enable => true,
#}

# Apache
#package { 'apache2':
#  ensure => present,
#}
#service { 'apache2' :
#  ensure  => running,
#  enable  => true,
#  require => Package['apache2'],
#}
