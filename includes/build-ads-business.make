; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS BUSINESS
projects[ads_business][type] = module
projects[ads_business][download][type] = git
projects[ads_business][download][branch] = master
projects[ads_business][download][url] = git@github.com:mycognitive/ads_business.git
projects[ads_business][subdir] = ads

