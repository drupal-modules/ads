; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS PREMIUM
projects[ads_premium][type] = module
projects[ads_premium][download][type] = git
projects[ads_premium][download][branch] = master
projects[ads_premium][download][url] = git@github.com:mycognitive/ads_premium.git
projects[ads_premium][subdir] = ads

