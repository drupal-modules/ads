; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS JOBS
projects[ads_jobs][type] = module
projects[ads_jobs][download][type] = git
projects[ads_jobs][download][branch] = master
projects[ads_jobs][download][url] = git@github.com:mycognitive/ads_jobs.git
projects[ads_jobs][subdir] = ads

