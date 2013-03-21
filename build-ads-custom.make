; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS CUSTOM
projects[ads_custom][type] = module
projects[ads_custom][download][type] = git
projects[ads_custom][download][branch] = master
projects[ads_custom][download][url] = git@github.com:mycognitive/ads_custom.git
projects[ads_custom][subdir] = custom

; ADS CUSTOM FEATURES
projects[ads_features][type] = module
projects[ads_features][download][type] = git
projects[ads_features][download][branch] = master
projects[ads_features][download][url] = git@github.com:mycognitive/ads_features.git
projects[ads_features][subdir] = custom

