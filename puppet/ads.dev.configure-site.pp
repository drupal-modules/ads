#
# Puppet manifest to configure fully functional ADS site, i.e. vhost, mysql configuration.
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


mysql::db { 'travis_ads_test':
  user     => 'travis_ads_test',
  password => 'travis_ads_test',
  host     => 'localhost',
  charset  => 'utf8',
  collate  => 'utf8_general_ci',
  grant    => ['ALL'],
}

