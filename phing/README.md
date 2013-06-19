Phing scripts
===

This folder contains phing scripts and files for activating various features.

Requirements
------------

* [Phing build script](http://www.phing.info/)
* [drush](http://drupal.org/project/drush)

Note: You can use the scripts only within your webroot (profiles/ads/phing).

Usage
-----
    phing -f build-xxx.xml

Available scripts
-----------------

* build-users.xml

  Script to generate random users
  
  Dependencies: ads_devel
