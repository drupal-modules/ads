; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS EDUCATION
projects[ads_education][type] = module
projects[ads_education][download][type] = git
projects[ads_education][download][branch] = master
projects[ads_education][download][url] = git@github.com:mycognitive/ads_education.git
projects[ads_education][subdir] = ads

