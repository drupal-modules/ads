; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS ITEMS
projects[ads_items][type] = module
projects[ads_items][download][type] = git
projects[ads_items][download][branch] = master
projects[ads_items][download][url] = git@github.com:mycognitive/ads_items.git
projects[ads_items][subdir] = ads

