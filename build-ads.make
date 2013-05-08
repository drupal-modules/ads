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
includes[] = drupal-org-core.make
includes[] = drupal-org-contrib.make
includes[] = drupal-org-themes.make
includes[] = drupal-org-libraries.make

;____________________
; Common ADS packages
;____________________

; REQUIRED ADS packages
; Provides features for ads distribution.
includes[] = build-ads-features.make

; OPTIONAL ADS packages (PLEASE CHANGE according to your needs)

; Provides common Animals features for ADS Drupal distribution.
includes[] = build-ads-animals.make

; Provides common Art features for ADS Drupal distribution.
includes[] = build-ads-art.make

; Provides common Auctions features for ADS Drupal distribution.
includes[] = build-ads-auctions.make

; Provides common Business features for ADS Drupal distribution.
includes[] = build-ads-business.make

; Provides common Community features for ADS Drupal distribution.
includes[] = build-ads-community.make

; Provides common Education features for ADS Drupal distribution.
includes[] = build-ads-education.make

; Provides common Dating features for ADS Drupal distribution.
includes[] = build-ads-dating.make

; Provides common Finance features for ADS Drupal distribution.
includes[] = build-ads-finance.make

; Provides common IT features for ADS Drupal distribution.
includes[] = build-ads-it.make

; Provides common Items features for ADS Drupal distribution.
includes[] = build-ads-items.make

; Provides common Jobs features for ADS Drupal distribution.
includes[] = build-ads-jobs.make

; Provides common Music features for ADS Drupal distribution.
includes[] = build-ads-music.make

; Provides common Properties features for ADS Drupal distribution.
includes[] = build-ads-properties.make

; Provides common Services features for ADS Drupal distribution.
includes[] = build-ads-services.make

; Provides common Travel features for ADS Drupal distribution.
includes[] = build-ads-travel.make

; Provides common Vehicles features for ADS Drupal distribution.
includes[] = build-ads-vehicles.make

;-------------------
; Extra ADS packages
;-------------------

; Provides common Development features for ADS Drupal distribution.
includes[] = build-ads-devel.make

; Restricted ADS packages

; Internal custom code
; includes[] = build-ads-premium.make

; Internal custom code
; includes[] = build-ads-custom.make

