class apachevarnish {

  Package { ensure => "installed" }

  package { "apache2": }
  package { "varnish": }

  file { '/etc/hosts':
    ensure => link,
    target => "/vagrant/hosts",
    force  => true
  }

  file { '/var/www':
    ensure => link,
    target => "/vagrant",
    notify => Service['apache2'],
    force  => true
  }

  file { '/etc/varnish':
    ensure => link,
    target => "/vagrant/etc/varnish",
    # notify => Service['varnish'],
    force  => true
  }


  service { "varnish":
    ensure => running,
    require => Package["varnish"],
  }


  service { "apache2":
    ensure => running,
    require => Package["apache2"],
  }

}
