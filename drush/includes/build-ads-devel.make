; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS DEVEL
projects[ads_devel][type] = module
projects[ads_devel][download][type] = git
projects[ads_devel][download][branch] = master
projects[ads_devel][download][url] = https://github.com/mycognitive/ads_devel.git
projects[ads_devel][subdir] = ads

;___________________________________________________
;
;  DEVELOPMENT
;___________________________________________________

; Coder
; Coder checks your Drupal code against coding standards and other best practices.
projects[coder] = "2.2"
