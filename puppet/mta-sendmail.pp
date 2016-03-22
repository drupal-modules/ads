#
# Puppet manifest to install sendmail for ADS distribution.
#

#
# Mail Transfer Agents (MTA)
#

class sendmail {

  package { 'sendmail':
    ensure => present
  }

  package { 'exim4':
    ensure => purged
  }

  package { 'exim4-base':
    ensure => purged
  }

  package { 'exim4-daemon-light':
    ensure => purged
  }

  package { 'exim4-config':
    ensure => purged
  }

  service { 'sendmail':
    ensure  => running,
    enable  => true,
    require => Package[sendmail]
  }
}
