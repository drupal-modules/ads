ADS Base Theme
==============

ADS base theme for ADS distribution: http://drupal.org/project/ads


Sub-themes are just like any other theme, with one difference: They inherit the parent theme's resources. There are no limits on the chaining capabilities connecting sub-themes to their parents. A sub-theme can be a child of another sub-theme, and it can be branched and organized however you see fit. This is what gives sub-themes great potential.
Imagine starting with a base theme designed as wireframes, then applying and refining all the details from a sub-theme. Then, from the same wireframe, testing out alternate designs by branching out another sub-theme. Working on a multi-site installation but you need a cohesive look and feel? With sub-theming, a lot of the design resources can be shared. Site-specific changes can be set to a specific sub-theme, but any shared resources can be edited once to be applied across all the installations. With careful planning, the possibilities are endless.


CREATING A SUB-THEME
----------------------

A sub-theme must have a different internal name (i.e., the name used by Drupal) from its parent theme. This name must not contain any spaces or other special characters. The name of your sub-theme must start with an alphabetic character and can only contain lowercase letters, numbers and underscores. Let's suppose this sub-theme internal name is "my_subtheme".

For more information, check: [Creating a sub-theme](https://www.drupal.org/node/225125).

*** IMPORTANT NOTE ***
*
* In Drupal 7, the theme system caches which template files and which theme
* functions should be called. This means that if you add a new theme,
* preprocess or process function to your template.php file or add a new template
* (.tpl.php) file to your sub-theme, you will need to rebuild the "theme
* registry." See https://drupal.org/node/173880#theme-registry
*
* Drupal 7 also stores a cache of the data in .info files. If you modify any
* lines in your sub-theme's .info file, you MUST refresh Drupal 7's cache by
* simply visiting the Appearance page at admin/appearance.
*


To obtain help on the use of Drush for creating Zen sub-themes, enter the following command at the command line:

    $ drush help zen

Note: you may need to install drush
