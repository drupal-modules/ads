; drush make build file for drupal.org packaging.
; This file defines 3rd party libraries for Drupal.

api = 2
core = 7.x

;___________________________________________________
;
;  LIBRARIES
;___________________________________________________

; MARKITUP!
; markItUp! is a JavaScript plugin built on the jQuery library. It allows you to turn any textarea into a markup editor.
libraries[markitup][download][type] = get
libraries[markitup][download][url] = "https://github.com/markitup/1.x/archive/master.zip"
libraries[markitup][download][subtree] = "1.x-master/markitup"
libraries[markitup][directory_name] = "markitup"
libraries[markitup][destination] = "libraries"

; JQUERY CYCLE
; The jQuery Cycle Plugin is a slideshow plugin that supports many different types of transition effects.
libraries[jquery_cycle][download][type] = get
libraries[jquery_cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "libraries"

; NIVO SLIDER
; Nivo Slider provides an easy and eye-catching way to showcase featured content.
libraries[nivo_slider][download][type] = get
libraries[nivo_slider][download][url] = "https://github.com/gilbitron/Nivo-Slider/archive/master.zip"
libraries[nivo_slider][directory_name] = "nivo-slider"
libraries[nivo_slider][destination] = "libraries"

; FANCYBOX
; The Fancybox module is the best way to incorporate the fancyBox jQuery plugin into Drupal. Display images, HTML,
; YouTube videos, Google maps in an elegant and aesthetic lightbox alternative.
libraries[fancybox][download][type] = get
libraries[fancybox][download][url] = "https://codeload.github.com/fancyapps/fancyBox/legacy.zip/v2.1.5"
libraries[fancybox][directory_name] = "fancybox"
libraries[fancybox][destination] = "libraries"

; JQUERY EASING
; The jQuery Easing module makes the jQuery Easing plugin available for Drupal modules/themes to use.
libraries[jquery_easing][download][type] = file
libraries[jquery_easing][download][url] = "http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"
libraries[jquery_easing][download][filename] = "jquery.easing.js"
libraries[jquery_easing][directory_name] = "easing"
libraries[jquery_easing][destination] = "libraries"

; FLEX SLIDER
; Flex Slider module integrates the Flex Slider library with Drupal and several contributed modules which allows you to
; build responsive, resizable slideshows.
libraries[flexslider][download][type] = get
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/master.zip"
libraries[flexslider][directory_name] = "flexslider"
libraries[flexslider][destination] = "libraries"

; JQUERY MAP HILIGHT
; It enables the simple addition of mouseover highlighting of hotspots to HTML image maps without requiring the editing
; of theme files or knowledge of javascript/jquery. 
libraries[jq_maphilight][download][type] = get
libraries[jq_maphilight][download][url] = "http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"
libraries[jq_maphilight][directory_name] = "jquery.maphilight"
libraries[jq_maphilight][destination] = "libraries"

; Views Isotope - jQuery Isotope
; This module allows you to easily create a grid View that uses the amazing Isotope JQuery Library to dynamically filter
; the elements displayed.
libraries[isotope][download][type] = file
libraries[isotope][download][url] = "http://isotope.metafizzy.co/isotope.pkgd.min.js"
libraries[isotope][download][filename] = "jquery.isotope.min.js"
libraries[isotope][directory_name] = "jquery.isotope"
libraries[isotope][destination] = "libraries"

libraries[kwicks][download][type] = get
libraries[kwicks][download][url] = "https://github.com/jmar777/kwicks/archive/master.zip"
libraries[kwicks][directory_name] = "kwicks"
libraries[kwicks][destination] = "libraries"

; SUPERFISH
; Superfish integrates jQuery Superfish plugin with your Drupal menus.
libraries[superfish][download][type] = get
libraries[superfish][download][url] = "https://github.com/mehrpadin/Superfish-for-Drupal/archive/1.x.zip"
libraries[superfish][directory_name] = "superfish"
libraries[superfish][destination] = "libraries"

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
libraries[colorbox][download][type] = "git"
libraries[colorbox][download][url] = "git://github.com/jackmoore/colorbox.git"
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

// Compass
libraries[compass][directory_name] = "compass"
libraries[compass][type] = "library"
libraries[compass][destination] = "libraries"
libraries[compass][download][type] = "get"
libraries[compass][download][url] = "https://github.com/Compass/compass/archive/stable.zip"

// PHPSass
// A compiler for SASS/SCSS written in PHP.
libraries[phpsass][directory_name] = "phpsass"
libraries[phpsass][type] = "library"
libraries[phpsass][destination] = "libraries"
libraries[phpsass][download][type] = "get"
libraries[phpsass][download][url] = "https://github.com/richthegeek/phpsass/archive/master.zip"

; Masonry Library
; Required by Masonry module.
libraries[masonry][directory_name] = "masonry"
libraries[masonry][type] = "library"
libraries[masonry][destination] = "libraries"
libraries[masonry][download][type] = "get"
libraries[masonry][download][url] = "http://masonry.desandro.com/masonry.pkgd.min.js"
