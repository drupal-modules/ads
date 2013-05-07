; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS ANIMALS
projects[ads_animals][type] = module
projects[ads_animals][download][type] = git
projects[ads_animals][download][branch] = master
projects[ads_animals][download][url] = git@github.com:mycognitive/ads_animals.git
projects[ads_animals][subdir] = ads

