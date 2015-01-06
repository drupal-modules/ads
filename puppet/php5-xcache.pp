package { 'php5-xcache' :
  ensure => installed,
  require => Package['apache2'],
  notify => Service['apache2'],
}
