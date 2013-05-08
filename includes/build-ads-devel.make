; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS DEVEL
projects[ads_devel][type] = module
projects[ads_devel][download][type] = git
projects[ads_devel][download][branch] = master
projects[ads_devel][download][url] = git@github.com:mycognitive/ads_devel.git
projects[ads_devel][subdir] = ads

