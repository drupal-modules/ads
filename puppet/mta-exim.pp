#
# Puppet manifest to install exim for ADS distribution.
#

#
# Mail Transfer Agents (MTA)
#

class exim($sysadmin=[], $mailman_domains=[]) {
  package { 'exim4-base':
    ensure => present;
  }
  package { 'exim4-config':
    ensure => present;
  }
  package { 'exim4-daemon-light':
    ensure => present,
    require => [Package[exim4-base], Package[exim4-config]],
  }
  # Remove sendmail if present.
  package { ["sendmail-cf","sendmail"]:
    ensure => purged
  }

  service { 'exim4':
    ensure          => running,
    hasrestart      => true,
    subscribe       => File['/etc/exim4/exim4.conf'],
  }

  file { '/etc/exim4/exim4.conf':
    owner => 'root',
    group => 'root',
    mode => 444,
    ensure => 'present',
    content => template("exim/exim4.conf.erb"),
    replace => 'true',
  }

  file { '/etc/aliases':
    owner => 'root',
    group => 'root',
    mode => 444,
    ensure => 'present',
    content => template("exim/aliases.erb"),
    replace => 'true',
  }
}
