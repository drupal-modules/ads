; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS CUSTOM FEATURES
projects[ads_features][type] = module
projects[ads_features][download][type] = git
projects[ads_features][download][url] = https://github.com/mycognitive/ads_features.git
projects[ads_features][download][branch] = master
projects[ads_features][subdir] = ads
