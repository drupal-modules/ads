; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS IT
projects[ads_it][type] = module
projects[ads_it][download][type] = git
projects[ads_it][download][branch] = master
projects[ads_it][download][url] = git@github.com:mycognitive/ads_it.git
projects[ads_it][subdir] = ads

