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
  override_options => { 'mysqld' => {
    'max_connections' => '1024',
    'max_allowed_packet' => '100M',
    'sort_buffer_size' => '50M',
    'innodb_buffer_pool_size' => '400M',
    'innodb_buffer_pool_instances' => '1',
    'innodb_log_buffer_size' => '30M',
    'innodb_read_io_threads' => '64',
    'innodb_write_io_threads' => '64',
    'innodb_io_capacity' => '5000',
    'innodb_flush_log_at_trx_commit' => '2',
    'innodb_log_file_size' => '800M'
  } }
}
