; drush make build file for drupal.org packaging.
; This file defines 3rd party libraries for Drupal.

api = 2
core = 7.x

;___________________________________________________
;
;  LIBRARIES
;___________________________________________________

; LESS CSS PREPROCESSOR PLUGIN
; Lessphp is a compiler for LESS written in PHP.
libraries[lessphp][type] = "libraries"
libraries[lessphp][download][type] = "get"
libraries[lessphp][download][url] = "http://leafo.net/lessphp/src/lessphp-0.3.8.tar.gz"
libraries[lessphp][directory_name] = "lessphp"
libraries[lessphp][destination] = "libraries"

; SOLR ACCESS LIBRARY
; A PHP library for indexing and searching documents within an Apache Solr installation.
libraries[SolrPhpClient][download][type] = "get"
libraries[SolrPhpClient][download][url] = "http://solr-php-client.googlecode.com/files/SolrPhpClient.r60.2011-05-04.tgz"
libraries[SolrPhpClient][directory_name] = "SolrPhpClient"
libraries[SolrPhpClient][destination] = "libraries"

; COLORBOX LIBRARY.
; A lightweight customizable lightbox plugin for jQuery.
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

; CKEDITOR
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.4/ckeditor_3.6.4.tar.gz"

; libphonenumber-for-php
; PHP version of Google's phone number handling library 
libraries[libphonenumber-for-php][download][type] = "get"
libraries[libphonenumber-for-php][download][url] = "https://github.com/chipperstudios/libphonenumber-for-php/archive/master.zip"
libraries[libphonenumber-for-php][directory_name] = "libphonenumber-for-php"
libraries[libphonenumber-for-php][destination] = "libraries"

