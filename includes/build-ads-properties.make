; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS PROPERTIES
projects[ads_properties][type] = module
projects[ads_properties][download][type] = git
projects[ads_properties][download][branch] = master
projects[ads_properties][download][url] = git@github.com:mycognitive/ads_properties.git
projects[ads_properties][subdir] = ads

