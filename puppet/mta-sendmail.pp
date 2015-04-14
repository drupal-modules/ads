#
# Puppet manifest to install sendmail for ADS distribution.
#

#
# SERVICES
#

#
# Mail
package { "sendmail": ensure => present, }

