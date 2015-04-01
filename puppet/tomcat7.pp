#
# Puppet manifest to install tomcat.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/tomcat

include java
class { 'tomcat': install_from_source => false }

tomcat::instance {'default': package_name => 'tomcat7'} ->
  tomcat::service  {'default':
    use_jsvc => false, use_init => true, service_name => 'tomcat7'
  }
