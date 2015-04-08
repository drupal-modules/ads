#
# Puppet manifest to install Jetty + Solr for ADS distribution.
#
# NOTE:
#   schema.xml/solrconfig.xml files are those provided by Solr by default.
#   You may need to modify those files to make search to work as expected.
#

#
# Solr 3.x

package { 'openjdk-6-jdk' :
  ensure => installed,
}
package { 'solr-tomcat' :
  ensure => installed,
}

exec { 'tomcat-port':
  command => "sed -i.bak 's|port=\"8080\"|port=\"8983\"|g' /etc/tomcat6/server.xml",
  path => ["/bin", "/usr/bin"],
}

service { 'tomcat6' :
  ensure => running,
  require => Package['solr-tomcat'],
}

