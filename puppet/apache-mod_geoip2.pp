#
# Puppet manifest to install geoip apache module.
#

include apache

package { 'libapache2-mod-geoip' :
  ensure => installed
}

class apache::mod::geoip {
  ::apache::mod { 'geoip': }
  # Template uses no variables
  file { 'geoip.conf':
    ensure  => file,
    path    => "${::apache::mod_dir}/geoip.conf",
    content => '
      <IfModule mod_geoip.c>
        GeoIPEnable On
        GeoIPEnableUTF8 On 
        # GeoIPOutput [Notes|Env|All]
        GeoIPOutput All
        GeoIPScanProxyHeaders On
        <IfModule prefork.c>
          GeoIPDBFile /usr/share/GeoIP/GeoIPCity.dat
        </IfModule>
        <IfModule !prefork>
          GeoIPDBFile /usr/share/GeoIP/GeoIPCity.dat MMapCache
        </IfModule>
      </IfModule>
      ',
    require => Exec["mkdir ${::apache::mod_dir}"],
    before  => File[$::apache::mod_dir],
    notify  => Service['httpd'],
  }
}

include apache::mod::geoip
