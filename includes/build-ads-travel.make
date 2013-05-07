; drush make build file for drupal.org packaging.
; This file defines custom ads modules.

;___________________________________________________
;
;  CUSTOM ADS MODULES
;___________________________________________________

; ADS TRAVEL
projects[ads_travel][type] = module
projects[ads_travel][download][type] = git
projects[ads_travel][download][branch] = master
projects[ads_travel][download][url] = git@github.com:mycognitive/ads_travel.git
projects[ads_travel][subdir] = ads

;___________________________________________________
;
;  3rd PARTY INTEGRATION MODULES
;___________________________________________________

; Booking.com API
; 3rd party integration with Booking.com service.
projects[booking_com_api] = "1.x-dev"

