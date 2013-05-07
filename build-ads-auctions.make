; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS AUCTIONS
projects[ads_auctions][type] = module
projects[ads_auctions][download][type] = git
projects[ads_auctions][download][branch] = master
projects[ads_auctions][download][url] = git@github.com:mycognitive/ads_auctions.git
projects[ads_auctions][subdir] = ads

