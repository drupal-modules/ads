; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS ART
projects[ads_art][type] = module
projects[ads_art][download][type] = git
projects[ads_art][download][branch] = master
projects[ads_art][download][url] = git@github.com:mycognitive/ads_art.git
projects[ads_art][subdir] = ads

