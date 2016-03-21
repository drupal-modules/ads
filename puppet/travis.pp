#
# Puppet manifest to install packages required by Travis when installing ADS distribution.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/apt
#   sudo puppet module install rafaelfc/pear

# Python Software Properties.
package { 'python-software-properties' :
 ensure => installed,
}

# PHP: Including custom php.ini
exec { 'php-ini' :
  command => "phpenv config-add php.ini",
  path    => ["/bin", "/usr/bin"],
}

#
# Other packages.
#
# html2text - HTML-to-text converter.
# tree - Print directory structure in the form of a tree.
package { ['html2text','tree']:
  ensure => installed,
}

#
# Postfix.
#

# Postfix: Installing postfix.
package { 'postfix' :
 ensure => installed,
}

# Postfix: Smtp-sink.
exec { 'smtp-sink' :
  command => "smtp-sink -d \"%d.%H.%M.%S\" localhost:2500 1000 &",
  path    => ["/bin", "/usr/bin", "/usr/sbin"],
  require => Package['postfix'],
}

# Postfix start.
service { 'postfix' :
  ensure => running,
  require => Package['postfix'],
}
