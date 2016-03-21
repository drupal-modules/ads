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

if $::ads_docroot != undef {
  $vhost_docroot = $::ads_docroot
} else {
  $vhost_docroot = '/var/www'
}

apache::vhost { $::ads_host:
  port    => '80',
  docroot => $vhost_docroot,
  directories  => [
    { path           => $vhost_docroot,
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
