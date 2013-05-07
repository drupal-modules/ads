; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS DATING
projects[ads_dating][type] = module
projects[ads_dating][download][type] = git
projects[ads_dating][download][branch] = master
projects[ads_dating][download][url] = git@github.com:mycognitive/ads_dating.git
projects[ads_dating][subdir] = ads

