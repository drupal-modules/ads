; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS CUSTOM FEATURES
projects[ads_features][type] = module
projects[ads_features][version] = "1.x-dev"
projects[ads_features][download][type] = git
projects[ads_features][download][branch] = 7.x-1.x
projects[ads_features][subdir] = ads

; ADS CUSTOM
projects[ads_custom][type] = module
projects[ads_custom][download][type] = git
projects[ads_custom][download][branch] = master
projects[ads_custom][download][url] = git@github.com:mycognitive/ads_custom.git
projects[ads_custom][subdir] = ads

; ADS ITEMS
projects[ads_items][type] = module
projects[ads_items][download][type] = git
projects[ads_items][download][branch] = master
projects[ads_items][download][url] = git@github.com:mycognitive/ads_items.git
projects[ads_items][subdir] = ads

; ADS PROPERTIES
projects[ads_properties][type] = module
projects[ads_properties][download][type] = git
projects[ads_properties][download][branch] = master
projects[ads_properties][download][url] = git@github.com:mycognitive/ads_properties.git
projects[ads_properties][subdir] = ads

; ADS JOBS
projects[ads_jobs][type] = module
projects[ads_jobs][download][type] = git
projects[ads_jobs][download][branch] = master
projects[ads_jobs][download][url] = git@github.com:mycognitive/ads_jobs.git
projects[ads_jobs][subdir] = ads

; ADS DATING
projects[ads_dating][type] = module
projects[ads_dating][download][type] = git
projects[ads_dating][download][branch] = master
projects[ads_dating][download][url] = git@github.com:mycognitive/ads_dating.git
projects[ads_dating][subdir] = ads

; ADS COMMUNITY
projects[ads_community][type] = module
projects[ads_community][download][type] = git
projects[ads_community][download][branch] = master
projects[ads_community][download][url] = git@github.com:mycognitive/ads_community.git
projects[ads_community][subdir] = ads

; ADS SERVICES
projects[ads_services][type] = module
projects[ads_services][download][type] = git
projects[ads_services][download][branch] = master
projects[ads_services][download][url] = git@github.com:mycognitive/ads_services.git
projects[ads_services][subdir] = ads

; ADS TRAVEL
projects[ads_travel][type] = module
projects[ads_travel][download][type] = git
projects[ads_travel][download][branch] = master
projects[ads_travel][download][url] = git@github.com:mycognitive/ads_travel.git
projects[ads_travel][subdir] = ads

; ADS ANIMALS
projects[ads_animals][type] = module
projects[ads_animals][download][type] = git
projects[ads_animals][download][branch] = master
projects[ads_animals][download][url] = git@github.com:mycognitive/ads_animals.git
projects[ads_animals][subdir] = ads

