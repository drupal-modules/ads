; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS BASE THEME
projects[ads_base][type] = theme
projects[ads_base][download][type] = git
projects[ads_base][download][branch] = master
projects[ads_base][download][url] = https://github.com/mycognitive/ads_base.git
projects[ads_base][directory_name] = "ads_base"
projects[ads_base][subdir] = ""
