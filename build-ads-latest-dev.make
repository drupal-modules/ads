;___________________________________________________
;
; ADS MAKEFILE
;
; drush make build file for drupal.org packaging.
;
; See:
;   http://drupal.org/node/625094
;   http://drupal.org/node/1476014
;
; Examples:
;   /usr/local/src/drush/docs/make.txt
;   /usr/local/src/drush/examples/example.make
;___________________________________________________

;___________________________________________________
;
;  DRUPAL CORE
;___________________________________________________

core = 7.x
api  = 2

projects[drupal][type] = core

; Specify directory for contrib modules
defaults[projects][subdir] = contrib

; Include the core definition for how to build Drupal
includes[] = drush/drupal-org-core.make
includes[] = drush/drupal-org-contrib.make
includes[] = drush/drupal-org-themes.make
includes[] = drush/drupal-org-libraries.make

;____________________
;
; ADS PROFILE
;____________________

; Download the ADS install profile and recursively build all its dependencies
projects[ads][type] = profile
projects[ads][download][type] = git
projects[ads][download][url] = https://github.com/mycognitive/ads.git
projects[ads][download][branch] = master
projects[ads][subdir] = ""

;_____________________
;
; Build/deploy process
;_____________________

projects[ads_drush][type] = library
projects[ads_drush][download][type] = git
projects[ads_drush][download][url] = https://github.com/mycognitive/ads_drush
projects[ads_drush][download][branch] = master
projects[ads_drush][destination] = ""
projects[ads_drush][subdir] = ""
projects[ads_drush][directory_name] = drush

;____________________
;
; Common ADS packages
;____________________

; REQUIRED ADS packages
; Provides features for ads distribution.
includes[] = drush/includes/build-ads-features-dev.make

; OPTIONAL ADS packages (PLEASE CHANGE according to your needs)

; Provides common Animals features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-animals.make

; Provides common Art features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-art.make

; Provides common Auctions features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-auctions.make

; Provides common Business features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-business.make

; Provides common Community features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-community.make

; Provides common Education features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-education.make

; Provides common Dating features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-dating.make

; Provides common Finance features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-finance.make

; Provides common IT features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-it.make

; Provides common Items features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-items.make

; Provides common Jobs features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-jobs.make

; Provides common Music features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-music.make

; Provides common Properties features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-property.make

; Provides common Services features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-services.make

; Provides common Travel features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-travel.make

; Provides common Vehicles features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-vehicles.make

; ADS theme.
includes[] = drush/includes/build-ads-theme.make

;-------------------
; Extra ADS packages
;-------------------

; Provides common Development features for ADS Drupal distribution.
includes[] = drush/includes/build-ads-devel.make

; Restricted ADS packages

; Internal custom code
; drush/includes[] = drush/includes/build-ads-premium.make

; Internal custom code
; drush/includes[] = drush/includes/build-ads-custom.make

