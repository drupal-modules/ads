; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS PROPERTIES
projects[ads_property][type] = module
projects[ads_property][download][type] = git
projects[ads_property][download][branch] = master
projects[ads_property][download][url] = https://github.com/mycognitive/ads_property.git
projects[ads_property][subdir] = ads

