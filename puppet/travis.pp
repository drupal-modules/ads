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
  path => ["/bin", "/usr/bin"],
}

#
# Other packages.
#
# html2text
#   HTML-to-text converter.
package { 'html2text' : ensure => installed, }
# tree
#   Print directory structure in the form of a tree.
package { 'tree' : ensure => installed, }

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
  path => ["/bin", "/usr/bin", "/usr/sbin"],
}

# Postfix: Disabling sendmail?
exec { 'disable-sendmail' :
  command => "echo -e '#!/usr/bin/env bash\nexit 0' | sudo tee /usr/sbin/sendmail",
  path => ["/bin", "/usr/bin"],
}

# Postfix: Configuring sendmail.
exec { 'configure-sendmail' :
  command => "echo 'sendmail_path = \"/usr/sbin/sendmail -t -i \"' | sudo tee \"/home/travis/.phpenv/versions/`php -i | grep \"PHP Version\" | head -n 1 | grep -o -P '\\d+\\.\\d+\\.\\d+.*'`/etc/conf.d/sendmail.ini\"",
  path => ["/bin", "/usr/bin"],
}

# Postfix start.
service { 'postfix' :
  ensure => running,
  require => Package['postfix'],
}
