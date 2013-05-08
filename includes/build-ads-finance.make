; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS FINANCE
projects[ads_finance][type] = module
projects[ads_finance][download][type] = git
projects[ads_finance][download][branch] = master
projects[ads_finance][download][url] = git@github.com:mycognitive/ads_finance.git
projects[ads_finance][subdir] = ads

