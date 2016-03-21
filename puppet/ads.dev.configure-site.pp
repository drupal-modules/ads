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
  notify { "Using facter docroot: ${::ads_docroot}": }
} else {
  $vhost_docroot = '/var/www'
}

if $::ads_host != undef {
  $vhost_host = $::ads_host
  notify { "Using facter docroot: ${::ads_host}": }
} else {
  $vhost_host = 'ads.server'
}

apache::vhost { $vhost_host:
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
