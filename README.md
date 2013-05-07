ADS Drupal distribution
===

This is an installation profile for building a Drupal based ads platform.

Requirements
------------

Same as Drupal 7: http://drupal.org/requirements

Recommended Installation
------------------------

1. First of all, please install Phing as the current full installation can be built by Phing build script.
   The easiest way to install Phing is by the following commands:

    ```
    $> pear channel-discover pear.phing.info
    $> pear install phing/phing
    ```

2. Run phing command inside the distribution directory:

    ```
    $> phing
    ```

   If you have any errors during this point, please install missing phing dependencies.
   
   Note: You'll be asked to edit build.properties.
         After editing the file, please remove properties.notset section
         and make sure that your LAMP environment is up and running.
         
3. Your code is built and ready in src directory.

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

 * http://drupal.org/project/drush

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

Support
-------
Please find the support at:
http://drupal.org/project/issues/ads?status=All

Feel free to ask any questions at:
http://drupal.org/node/add/project-issue/ads
