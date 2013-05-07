; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS COMMUNITY
projects[ads_community][type] = module
projects[ads_community][download][type] = git
projects[ads_community][download][branch] = master
projects[ads_community][download][url] = git@github.com:mycognitive/ads_community.git
projects[ads_community][subdir] = ads

