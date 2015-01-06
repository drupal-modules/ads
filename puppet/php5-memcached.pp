package { 'php5-memcached' :
  ensure => installed,
  require => Package['apache2'],
  notify => Service['apache2'],
}

class memcached (
  $port      = '11211',
  $user      = 'memcached',
  $maxconn   = '1024',
  $cachesize = '64',
) {

  package { 'memcached': ensure => installed }

  service { 'memcached':
    enable    => true,
    ensure    => running,
    hasstatus => true,
    require   => Package['memcached'],
  }

  # Configuration
  file { '/etc/memcached.conf':
    content => '
      -d
      -p <%= @port %>
      -u <%= @user %>
      -c <%= @maxconn %>
      -m <%= @cachesize %>
    ',
    notify  => Service['memcached'],
    require => Package['memcached'],
  }

}

include memcached
