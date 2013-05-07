; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS MUSIC
projects[ads_music][type] = module
projects[ads_music][download][type] = git
projects[ads_music][download][branch] = master
projects[ads_music][download][url] = git@github.com:mycognitive/ads_music.git
projects[ads_music][subdir] = ads

