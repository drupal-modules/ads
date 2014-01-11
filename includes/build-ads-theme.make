; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS MUSIC
projects[ads_theme][type] = theme
projects[ads_theme][download][type] = git
projects[ads_theme][download][branch] = master
projects[ads_theme][download][url] = git@github.com:mycognitive/ads_theme.git
projects[ads_theme][directory_name] = "ads_theme"
