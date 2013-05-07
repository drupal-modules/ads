; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS SERVICES
projects[ads_services][type] = module
projects[ads_services][download][type] = git
projects[ads_services][download][branch] = master
projects[ads_services][download][url] = git@github.com:mycognitive/ads_services.git
projects[ads_services][subdir] = ads

