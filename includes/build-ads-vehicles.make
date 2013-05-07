; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS VEHICLES
projects[ads_vehicles][type] = module
projects[ads_vehicles][download][type] = git
projects[ads_vehicles][download][branch] = master
projects[ads_vehicles][download][url] = git@github.com:mycognitive/ads_vehicles.git
projects[ads_vehicles][subdir] = ads

