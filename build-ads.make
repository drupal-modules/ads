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

; Include the definition for how to build Drupal
includes[] = drupal-org-core.make
includes[] = drupal-org-contrib.make
includes[] = drupal-org-themes.make
includes[] = drupal-org-libraries.make
includes[] = build-ads-custom.make

