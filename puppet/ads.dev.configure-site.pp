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

# MySQL
# Note: mysql module will manage all the restarts needed after all the configuration changes.
class { '::mysql::server':
  root_password    => 'root',
  override_options => {
    'mysqld' => {
      'max_connections' => '512',
      'max_allowed_packet' => '12M'
    }
  },
}
