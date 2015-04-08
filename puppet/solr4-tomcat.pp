#
# Puppet manifest to install Solr on Tomcat.
#
# Dependencies:
#   sudo apt-get -y install puppet
#   sudo puppet module install puppetlabs/tomcat
#   sudo apt-get install augeas-tools=1.\* augeas-lenses=1.\* augeas-doc=1.\* libaugeas0=1.\*

node default {
  include solr
}

class solr {

  # variables
  $version = '4.10.4'
  $data_dir = "/opt/solr/data"
  $home_dir = "/opt/solr/home"

  $tomcat_version = "tomcat7"
  $tomcat_base = "/var/lib/${tomcat_version}"
  $tomcat_user = $operatingsystem ? {
    /RedHat|CentOS/ => "tomcat", 
    /Debian|Ubuntu/ => $tomcat_version,
  }

  # includes
  include solr::files

  class { 'tomcat': install_from_source => false }

  # Ensure Java libraries are installed
  package { "java":
    ensure => present,
    name => $operatingsystem ? {
      'Centos' => $operatingsystemrelease ? {
        '6.0' => "java-1.6.0-openjdk.$hardwaremodel",
         '*' => 'openjdk-7-jre',
      },
      /Debian|Ubuntu/ => 'openjdk-7-jre-headless',
    },
  }

  # Set port 8983 for Tomcat 7 and make sure it's running.
  tomcat::instance {'default': package_name => $tomcat_version} ->
    tomcat::service  {'default':
      service_name => 'tomcat7',
      service_ensure => 'running',
      use_jsvc => false, use_init => true,
# use_jsvc => true, java_home => "/usr/lib/jvm/java-7-openjdk-amd64",
    }->
    tomcat::config::server { $tomcat_version:
      catalina_base => $tomcat_base,
      port          => 8983,
    }

  class solr::files {

    # Ensure solr directories are present.
    file { 'home_dir':
      path => $solr::home_dir,
      ensure => directory,
      recurse => true,
    }
    file { 'data_dir':
      path => $solr::data_dir,
      ensure => directory,
      recurse => true,
      owner => $solr::tomcat_user,
      group => $solr::tomcat_user,
    }

    # Download and extract solr
    exec { "solr-extract":
      path    => ['/usr/bin', '/usr/sbin', '/bin'],
      command => "curl -s http://archive.apache.org/dist/lucene/solr/${solr::version}/solr-${solr::version}.tgz | tar zxf -",
      cwd => "/opt/solr",
      require => [File["data_dir"], File["home_dir"]],
      creates => "/opt/solr/solr-${solr::version}/dist/solr-${solr::version}.war",
    }
    # Logging setup for Tomcat.
    exec { 'solr-install-logging-jars':
      path      => ['/usr/bin', '/usr/sbin', '/bin'],
      cwd       => "/opt/solr",
      command   => "cp -v /opt/solr/solr-${solr::version}/example/lib/ext/*.jar /opt/solr/solr-${solr::version}/dist/solrj-lib/*.jar /opt/solr/solr-${solr::version}/example/resources/log4j.properties ${solr::tomcat_base}/webapps/solr/WEB-INF/lib",
      onlyif    => "test ! -f ${solr::tomcat_base}/webapps/solr/WEB-INF/lib/log4j-1.2.17.jar",
      require   => Exec['solr-extract'],
    }
  }

  tomcat::war { 'solr.war':
    catalina_base => $tomcat_base,
    war_source => "/opt/solr/solr-${solr::version}/dist/solr-${solr::version}.war",
    require => Class["solr::files"],
    notify => Service[$tomcat_version],
  }

}
