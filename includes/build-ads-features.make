; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS CUSTOM FEATURES
projects[ads_features][type] = module
projects[ads_features][version] = "1.x-dev"
projects[ads_features][download][type] = git
projects[ads_features][download][branch] = 7.x-1.x
projects[ads_features][subdir] = ads

