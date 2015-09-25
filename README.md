ADS Drupal distribution
===

This is an installation profile for building a Drupal based ads platform.

![](https://api.bountysource.com/badge/tracker?tracker_id=578272)

Build status
------------
ADS build status:

Releases:

| Status | Project | Version | Description
| :----- | :------ | :--- | :---
| [![Build Status](https://travis-ci.org/mycognitive/ads.svg?branch=7.x-1.0-alpha2)](https://travis-ci.org/mycognitive/ads) | ADS | 7.x-1.0-alpha2 | Main build process.
| [![Build Status](https://travis-ci.org/mycognitive/ads_features.svg?branch=7.x-1.0-alpha2)](https://travis-ci.org/mycognitive/ads_features) | ADS Features | 7.x-1.0-alpha2 | Build and installation of ADS Features.

Latest:

| Status | Project | Branch | Description
| :----- | :------ | :--- | :---
| [![Build Status](https://travis-ci.org/mycognitive/ads.svg?branch=master)](https://travis-ci.org/mycognitive/ads) | ADS | master | Main build process.
| [![Build Status](https://travis-ci.org/mycognitive/ads.svg?branch=7.x-1.x)](https://travis-ci.org/mycognitive/ads) | ADS | 7.x-1.x | Main build process.
| [![Build Status](https://travis-ci.org/mycognitive/ads_features.svg?branch=master)](https://travis-ci.org/mycognitive/ads_features) | ADS Features | master | Build and installation of ADS Features.
| [![Build Status](https://travis-ci.org/mycognitive/ads_features.svg?branch=7.x-1.x)](https://travis-ci.org/mycognitive/ads_features) | ADS Features | 7.x-1.x | Build and installation of ADS Features.

Requirements
------------

Same as Drupal 7: http://drupal.org/requirements

You also need to enable "fileinfo" PHP extension in CLI's php.ini (required by Drush).

Recommended Installation
------------------------

1. First of all, please install Phing as the current full installation can be built by Phing build script.
   The easiest way to install Phing is by the following commands:

    ```
    $> pear channel-discover pear.phing.info
    $> pear install phing/phing
    ```

    ```
    $> pear clear-cache
    ```

    Installation process requires also the VersionControl_Git PEAR package,
    as The Git tasks depend on PEAR's VersionControl_Git package.

    ```
    $> pear install VersionControl_Git-0.4.4
    ```

2. Run phing command inside the distribution directory:

    ```
    $> make
    ```
    
   Alternatively:
    ```
    $> phing
    ```

   If you have any errors during this point, please install missing phing dependencies.

   Note: You'll be asked to edit build.properties.
         After editing the file, please remove properties.notset section
         and make sure that your LAMP environment is up and running.
         
  Your code is built and ready in src directory.

3. Now you can install the distribution by the following command:

    ```
    $> make install
    ```
    
   Alternatively:
    ```
    $> phing ads-install
    ```

Manual Installation
-------------------

1. Make sure your ads download is placed in the webroot and configure
   your webserver accordingly.

2. Install distribution as a usual Drupal site by visiting it with your web
   browser and follow the usual Drupal installation instructions (i.e. Drupal's
   INSTALL.txt in the webroot subfolder).

Apache Solr
-----------

Distribution can be used with Apache Solr (http://lucene.apache.org/solr/), for
installation instructions please consult their respective documentation.

The Search API Solr integration provides already some documentation for setting
up a Solr server. See the "Setting up Solr" paragraph at its documentation:

  http://drupalcode.org/project/search_api_solr.git/blob_plain/refs/heads/7.x-1.x:/INSTALL.txt

Building the distribution
-------------------------

Follow these instructions to build the distribution from scratch, e.g. using the
latest development version from the Git repository. If you have downloaded an
already packaged tarball, you don't need to do this.

Ads is distributed with several .make files and one .profile file. The
.make files define what packages must be downloaded and the .profile file is
responsible for configuring all those modules. See also the "Make files" section
at the end of this document.

Before building the distribution you need Drush (at least version 5+):

 * https://github.com/drush-ops/drush

For instructions on how to install it, please consult the respective
documentation. Then continue with the following steps:

Make files
----------

* build-ads.make

Main make build a fully functional website that includes core, the profile code itself, and all of its dependencies.

* build-ads-custom.make

It contains custom ads modules.

* drupal-org-contrib.make

This make file defines Drupal contributed modules.

* drupal-org-core.make

Drupal core make file.
Include the definition for how to build Drupal core directly, including Drupal core patches.

* drupal-org-libraries.make

This file defines 3rd party libraries for Drupal.

* drupal-org-themes.make

This make file defines Drupal themes.

Troubleshooting
---------------

If wget fails to download files from the HTTPS protocol (happens to Cygwin's wget), please ensure that you have ca-certificates package installed in your system.

If it still fails with the following errors:

    ERROR: certificate common name `*.drupal.org' doesn't match requested host name `drupal.org'.
    
then please upgrade your wget version to >=1.14 or please configure your wget to connect insecurely.

See:
- https://bugzilla.redhat.com/show_bug.cgi?id=903756
- https://github.com/drush-ops/drush/issues/74
- https://github.com/drush-ops/drush/issues/74
- https://github.com/drushonwindows/Drush-on-Windows-Installer/issues/4
- http://stackoverflow.com/questions/9224298/how-do-i-fix-certificate-errors-when-running-wget-on-an-https-url-in-cygwin

If PEAR ends up with the message `"No releases available for package 'pear.phing.info/phing'"`, you may need to clear its cache and try again.

If the build fails with:

    Unable to determine mime type for Spyc.php

then you have to install PHP Fileinfo extension or upgrade your PHP to >=5.3 which contains that extension.

If you're using Cygwin and end up with messages saying "The system cannot find the path specified." after commands that contain ">/dev/null" or "2>&1" then consider those:
- On the disk from which you start phing (in its root folder) create folder with name "dev"
- On the disk from which you start phing (in its root folder) create empty file with name "&1"
- Inside the Cygwin's installation directory "dev" folder, please create empty file with name "null" so Cygwin can access /dev/null
If you find another way to solve above problem, please tell us.

Support
-------
Please find the support at:
http://drupal.org/project/issues/ads?status=All

Feel free to ask any questions at:
http://drupal.org/node/add/project-issue/ads
