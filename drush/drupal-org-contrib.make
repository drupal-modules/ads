; drush make build file for drupal.org packaging.
; This file defines Drupal contributed modules.

api = 2
core = 7.x

;___________________________________________________
;
;  CONTENT MODULES
;___________________________________________________

; WorkfloW
; The workflow module allows the creation and assignment of arbitrary workflows to Drupal node types. Workflows are made up of workflow states. For example, a
; workflow with the states Draft, Review, and Published could be assigned to the Story node type.
projects[workflow][version] = "2.4"
; @Patch: It seems that it was a typo on the function workflow_features_pipe_field_base_alter (https://www.drupal.org/node/2303925#comment-8974443).
projects[workflow][patch][] = "https://www.drupal.org/files/issues/workflow-feature-undefined-wid-2303925-1.patch"

; Context allows you to manage contextual conditions and reactions for different portions of your site. You can think of each context as representing a
; "section" of your site. For each context, you can choose the conditions that trigger this context to be active and choose different aspects of Drupal that
; should react to this active context.
; projects[context][version] = "3.0-beta6"

; Countries
; This module provides many country related tasks. Country fields, token support, et al.
; Required by: ads_locations
projects[countries] = "2.1"

; Answers
; Provides a question & answer service. Users can post questions and other users can answer them.
projects[answers] = "4.0-alpha1"

;___________________________________________________
;
;  CONTENT TYPE AND FIELD MODULES
;___________________________________________________

; HoneypoT
; Honeypot uses both the honeypot and timestamp methods of deterring spam bots from completing forms on your Drupal site.
projects[honeypot][version] = "1.16"

; DatE
; This package contains both a flexible date/time field type Date field and a Date API that other modules can use.
; projects[date][version] = "2.6"

; Email
; This module provides a field type for email addresses.
projects[email][version] = "1.2"

; Address FielD
; A Drupal 7 field module to hold postal addresses, implementing a subset of the fields defined in the xNAL standard.
projects[addressfield][version] = "1.0-beta3"

; Phone
; This module provides a phone field type.
projects[phone][version] = "2.x-dev"
projects[phone][download][type] = git
projects[phone][download][branch] = "7.x-2.x"
projects[phone][download][revision] = 0df2e253a80f87f3fd886437d9021a06e7202de9

; Field group
; Fieldgroup will, as the name implies, group fields together. All fieldable entities will have the possibility to add groups to wrap their fields together.
; Fieldgroup comes with default HTML wrappers like vertical tabs, horizontal tabs, accordions, fieldsets or div wrappers.
; NOTE: Changed field_group dependency from version 1.1 to 1.x-dev as we need at least https://drupal.org/node/1324860 functionality (hiding of field groups
; NOTE: including children).
projects[field_group][version] = "1.x-dev"

; Multistep
; Multistep adds multiple-step functionality to content type editing forms.
; projects[multistep][version] = "1.x-dev"

; Field collection
; Provides a field-collection field, to which any number of fields can be attached. A field collection is internally represented as an entity, which is embedded
; in the host entity. Thus, if desired field collections may be viewed and edited separately too.
projects[field_collection][version] = "1.0-beta5"

; References
; This project provides D7 versions of the 'node_reference' and 'user_reference' field types, that were part of the CCK package in D6, at functional parity with
; the D6 counterparts. See http://drupal.org/node/533222 for details.
projects[references][version] = "2.0"

; Conditional fields
; Define dependencies between fields based on their states and values. Conditional Fields for Drupal 7 is an user interface to the new States API, plus the
; ability to modify fields appearance and behavior on certain conditions when viewing content.
; Latest stable version: 7.x-3.0-alpha1 (2013-Nov-18)
projects[conditional_fields][version] = "3.x-dev"
projects[conditional_fields][download][type] = git
projects[conditional_fields][download][branch] = "7.x-3.x"
projects[conditional_fields][download][revision] = cd29b003a592d375f3fdb4c46f5639d0f26ed0be
; @Patch: Add capacity to use conditional_fields on field_collection item (https://drupal.org/node/1648128).
projects[conditional_fields][patch][] = "https://drupal.org/files/conditional_fields-fix_for_collections_11.patch"
; @Patch: Support for multiple "Field Collection" fields (https://drupal.org/node/1464950).
projects[conditional_fields][patch][] = "https://drupal.org/files/conditional_fields_fixed_multiple_field_collection_fields_1464950-62_0.patch"

; Link
; Provides a standard custom content field for links.
projects[link][version] = "1.2"

; Double field
; Double field is a small module written to provide extensions to Drupal's core Fields.
; By this module you can divide your fields into two seporate parts.
projects[double_field][version] = "2.3"

; Field validation
; This module allowing you to specify validation rules for your field instances.
projects[field_validation][version] = "2.3"

; Measured value field
; Implements a field type that has number and unit of measurement
; projects[mvf][version] = "1.0-alpha2"

; Money
; This module defines the "money" field.
; It uses the Currency API, which is included in the Currency module, to get a list of existing currencies and their symbols.
projects[money][type] = module
projects[money][version] = "1.x-dev"

; Bundle Name Reference
; Provides a Bundle Name Reference field type
projects[bundle_name_reference][version] = "1.x-dev"

; Field Delimiter
; Provides a setting for field formatters, allowing multi-value fields to be displayed with a delimiter between the values
projects[field_delimiter][version] = "1.0"

; Votingapi
; VotingAPI helps developers who want to use a standardized API and schema for storing, retrieving, and tabulating votes for Drupal content.
projects[votingapi][version] = "2.12"

; Fivestar
; Adds a clean, attractive voting widget to nodes and comments and any entity.
projects[fivestar][version] = "2.1"

; Simple hierarchical select
; Defines a new form widget for taxonomy fields to select a term by "browsing" through the vocabularies hierarchy.
; Required by: ads_content_types
projects[shs][version] = "1.6"

;___________________________________________________
;
;  ENTITY MODULES
;___________________________________________________

; Entity
; Extends the entity API in order to provide a unified way to deal with entities and their properties.
projects[entity][version] = "1.5"

; Entity Score
; Provide dynamic entity score boosts based on field values or conditions.
projects[entity_score][version] = "1.x-dev"

; Entity Reference
; Provides a field type that can reference arbitrary entities.
projects[entityreference][version] = "1.1"

; Profile 2
; Provides a new, fieldable 'profile' entity.
projects[profile2][version] = "1.3"

;___________________________________________________
;
;  USER MODULES
;___________________________________________________

; LoginToboggan
; Offers several modifications of the Drupal login system in an external module by offering many features and usability improvements.
projects[logintoboggan][version] = "1.3"

; Email Registration
; Allow users to register and login using only an email address. Users can then log-in using their email address and password for authentication.
projects[email_registration][version] = "1.1"

; Workspace
; Users to have a central place to view and manage their content. It's a user-centric view of a Drupal site.
projects[workspace][version] = "1.x-dev"

; IP-based Determination of a Visitor's Country
; Uses a visitor's IP address to identify the geographical location (country) of the user. 
projects[ip2country][version] = "1.4"

; Smart IP
; Smart IP identify visitor's geographical location (longitude/latitude), country, region, city and postal code based on the IP address of the user.
projects[smart_ip][download][type] = git
projects[smart_ip][download][branch] = 7.x-2.x

;___________________________________________________
;
;  MENU MODULES
;___________________________________________________

; Path Auto
; Automatically generates URL/path aliases for various kinds of content (nodes, taxonomy terms, users).
projects[pathauto][version] = "1.2"

; Sitemap
; Provides a site map that gives visitors an overview of your site. It can also display the RSS feeds for all blogs and categories.
projects[site_map][version] = "1.2"

; Taxonomy Menu
; Transform any of your taxonomy vocabularies into existing menus easily!
projects[taxonomy_menu][version] = "1.4"

; Menu Block
; It provides configurable blocks of menu trees starting with any level of any menu.
projects[menu_block] = "2.3"

; Menu Attributes
; Allows you to specify some additional attributes for menu items such as id, name, class, style, and rel.
projects[menu_attributes][version] = "1.0-rc2"

; NTM (Metro Menus)
; This module like "Nice menus" but without old solutions in code. CSS-Menu only
; (working in IE7+ and other modern browsers). With this module you can select
; any sub items with any depth from menu or taxonomy.
projects[ntm][version] = "1.12"

;___________________________________________________
;
;  VIEWS MODULES
;___________________________________________________

; Views
; Provides a flexible method to control how lists and tables of content are presented.
projects[views][version] = "3.8"

; Views Bulk Operations
; This module augments Views by allowing bulk operations to be executed on the displayed rows. It does so by showing a checkbox in front of each node, and
; adding a select box containing operations that can be applied. Drupal Core or Rules actions can be used.
; projects[views_bulk_operations][version] = "3.x-dev"
; projects[views_bulk_operations][download][type] = git
; projects[views_bulk_operations][download][branch] = 7.x-3.x
; projects[views_bulk_operations][download][revision] = 50be134537e7f7151d15670ee7d9e1099fb1f565

; EVA: Entity Views Attachment
; Provides a Views display plugin that allows the output of a View to be attached to the content of any Drupal entity.
projects[eva][version] = "1.2"

; Calendar
; Display any Views date field in calendar formats. Switch between year, month, and day views.
projects[calendar][version] = "3.4"

;___________________________________________________
;
;  PANEL MODULES
;___________________________________________________

; Panels
; Allows a site administrator to create customized layouts for multiple uses.
projects[panels][version] = "3.4"

;___________________________________________________
;
;  LANGUAGE MODULES
;___________________________________________________

; Internationalization
; Collection of modules to extend Drupal core multilingual capabilities and be able to build real life multilingual sites.
projects[i18n] = "1.11"

; Language icons
; Provides icons for language links.
; projects[languageicons] = "1.0"

; Synonyms
; Provides search for taxonomy term synonyms via the built-in search module.
; projects[synonyms] = "1.1"

;___________________________________________________
;
;  FEEDS MODULES
;___________________________________________________

; Feeds
; Import or aggregate data as nodes, users, taxonomy terms or simple database records.
; projects[feeds][version] = "2.0-alpha7"

; Job scheduler (required by Feeds)
; Simple API for scheduling tasks once at a predetermined time or periodically at a fixed interval.
projects[job_scheduler][version] = "2.0-alpha3"

;___________________________________________________
;
;  FLAG MODULES
;___________________________________________________

; Flag
; Flag is a flexible flagging system that is completely customizable by the administrator. Using this module, the site administrator can provide any number of
; flags for nodes, comments, users, and any other type of entity. Some possibilities include bookmarks, marking important, friends, or flag as offensive. With
; extensive views integration, you can create custom lists of popular content or keep tabs on important content.
projects[flag][version] = "3.x-dev"
projects[flag][download][type] = git
projects[flag][download][branch] = "7.x-3.x"
projects[flag][download][revision] = a38302c74000dcb82db89281708c1359fc3ed408

;___________________________________________________
;
;  RULES MODULES
;___________________________________________________

; Rules
; The rules module allows site administrators to define conditionally executed actions based on occurring events (known as reactive or ECA rules). It's a
; replacement with more features for the trigger module in core and the successor of the Drupal 5 workflow-ng module.
projects[rules][version] = "2.7"

; Rules auto tag
; The Rules Autotag module takes a light-weight approach for autotagging full-text content by matching taxonomy terms (and optional Synonyms). Rules Autotag
; depends on the Rules module. Functionality is provided on different layers.
; projects[rules_autotag][version] = "1.1"

; Rules link
; This module lets you create links which trigger arbitrary functionality with the help of Rules.
projects[rules_link][version] = "1.0-beta4"
projects[rules_link][download][type] = git
projects[rules_link][download][branch] = "7.x-1.0"
projects[rules_link][download][revision] = 63975cf69c576af6e3154f0f6cfa9f9d27cff10b

;___________________________________________________
;
;  ACCESS MODULES
;___________________________________________________

; Field Permissions
; The Field Permissions module allows site administrators to set field-level permissions to edit, view and create fields on any entity.
; projects[field_permissions][version] = "1.0-beta2"

;___________________________________________________
;
;  FEATURE MODULES
;___________________________________________________

; FEATURES
projects[features][version] = "2.2"

; FEATURES EXTRA
projects[features_extra][version] = "1.0-beta1"

; STRONGARM
projects[strongarm][version] = "2.0"

;___________________________________________________
;
;  MAIL
;___________________________________________________

; Mime Mail
; Component module for use by other modules to send HTML emails with embedded images and attachments.
; projects[mimemail][version] = "1.0-alpha2"

; SMTP
; This module allows Drupal to bypass the PHP mail() function and send email directly to an SMTP server. The module supports SMTP authentication and can even
; connect to servers using SSL if supported by PHP.
; projects[smtp] = "1.0-beta2"

;___________________________________________________
;
;  TAXONOMY MODULES
;___________________________________________________

; Content TaXonomy
; The module provides extensions to Drupal's core Taxonomy Term Reference Fields.
projects[content_taxonomy][version] = "1.0-beta2"

; Term level
; This module provides a field type for referencing terms with a level to an entity, e.g. someone can add the term "Java" with the level "Expert" to a node.
; The levels can be defined in the field settings and consist of a numeric level key and a human readable level label. The structure of the specified vocabulary
; either has to be a flat-list or a single hierarchy with two hierarchy-levels, where the parents act as grouping terms.
projects[term_level][version] = "1.1"

; Taxonomy Manager
; projects[taxonomy_manager][version] = "1.0-rc1"

;___________________________________________________
;
;  FORMS MODULES
;___________________________________________________

; IFE
; IFE or Inline Form Errors allows you to place form submission error inline with the form elements. Three options are provided for setting your inline error
; behaviour. You can configure the default behaviour or override the behaviour on a per form basis. You can add as many forms as you like.
projects[ife] = "2.0-alpha2"

; Webform
; Webform is the module for making surveys in Drupal. After a submission, users may be sent an e-mail "receipt" as well as sending a notification to
; administrators. Results can be exported into Excel or other spreadsheet applications. Webform also provides some basic statistical review and has and
; extensive API for expanding its features.
; projects[webform] = "3.18"

;___________________________________________________
;
;  SEARCH, FACET & SOLR MODULES
;___________________________________________________

; Search API
; This module provides a framework for easily creating searches on any entity known to Drupal, using any kind of search engine. For site administrators, it is a
; great alternative to other search solutions, since it already incorporates facetting support and the ability to use the Views module for displaying search
; results, filters, etc. Also, with the Apache Solr integration, a high-performance search engine is available for this module. Developers, on the other hand,
; will be impressed by the large flexibility and numerous ways of extension the module provides. Hence, the growing number of additional contrib modules (linked
; below), providing additional functionality or helping users customize some aspects of the search process.
projects[search_api][version] = "1.13"

; Search API saved searches
; This module offers users the ability to save searches executed with the Search API module and be notified of new results. Notifications are done via mails
; with token-replacement, their frequency can be configured both by admins and/or users and saved searches can also be created without first executing the
; search.
projects[search_api_saved_searches][version] = "1.3"

; Search API Autocomplete
; This module provides autocomplete functionality for Search API searches, similar to the Apache Solr autocomplete module. Autocompletion can be activated and
; configured for each search (all search views and pages) individually, so you have fine-grained control over where autocompletion can be used � and by whom.
projects[search_api_autocomplete][version] = "1.0-beta2"

; Search API Solr
; This module provides a Solr backend for the Search API module. The backend uses, like the popular Apache Solr Search Integration module, Apache Solr servers
; for indexing and searching content. It has great performance, is suitable even for use on large commercial websites and supports facets and multi-index
; searches.
projects[search_api_solr][version] = "1.5"

; Search API Ranges
projects[search_api_ranges] = "1.5"

; Facet API
; Allows site builders to easily create and manage faceted search interfaces.
; Sub-modules: facetapi, current_search
projects[facetapi][version] = "1.5"

; Facet API Pretty Paths
; projects[facetapi_pretty_paths][version] = "1.0-beta2"

; Search API Database Search
; Provides a backend for the Search API that uses a normal database to index data.
projects[search_api_db][version] = "1.x-dev"

;___________________________________________________
;
;  MESSAGING MODULES
;___________________________________________________

; MESSAGE
; Message module is Drupal 7's answer to activity-streams and a flexible Messaging & Notifications system.
; projects[message][version] = "1.7"

;___________________________________________________
;
;  SOCIAL MODULES
;___________________________________________________

; SHARETHIS
; Integration with the ShareThis social bookmarking utility on selected node types.
projects[sharethis][version] = "2.5"

;___________________________________________________
;
;  IMPORT/EXPORT MODULES
;___________________________________________________

; TAXONOMY CSV
; This module allows you to import or export taxonomy from or to a CSV (comma-separated values) file or with a copy-and-paste text.
projects[taxonomy_csv][version] = "5.x-dev"
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][branch] = 7.x-5.x
projects[taxonomy_csv][download][revision] = 539e061dcfd729e2dbcf94b5598c5c9ba45d3b59

; Role Export
; Roles can be exported with Features and get the exact same rid if imported on other sites
; Allows roles to have machine_names and generates a unique role id (rid) based off of the machine_name.
; projects[role_export][version] = "1.0"

; Migrate
; The migrate module provides a flexible framework for migrating content into Drupal from other sources.
; projects[migrate][version] = "2.5"

;___________________________________________________
;
;  CLIENTSIDE MODULES
;___________________________________________________

; Clientside validation
; This module adds clientside validation (aka "Ajax form validation") for all forms and webforms using jquery.validate. The included jquery.validate.js file is
; patched because we needed to be able to hide empty messages.
; projects[clientside_validation][download][type] = get
; projects[clientside_validation][download][directory_name] = "clientside_validation"
; projects[clientside_validation][download][url] = http://ftp.drupal.org/files/projects/clientside_validation-7.x-1.37.tar.gz

;___________________________________________________
;
;  3rd PARTY INTEGRATION MODULES
;___________________________________________________

; WYSIWYG
; Allows to use client-side editors to edit content. It simplifies the installation and integration of the editor of your choice. This module replaces all other
; editor integration modules. No other Drupal module is required.
projects[wysiwyg][version] = "2.2"

; Google Analytics
; Adds the Google Analytics web statistics tracking system to your website.
projects[google_analytics][version] = "1.3"

; Clam AV
; Drupal integration with the ClamAV virus scanner. This module will verify that files uploaded to a site are not infected with a virus, and prevent infected
; files from being saved.
; projects[clamav][version] = "1.0-alpha2"

; LESS
; This is a preprocessor for LESS (http://lesscss.org/) files.
projects[less][version] = "2.6"

; AWS SDK for PHP
; Library, code samples, and documentation for developers to build PHP applications
; that tap into the cost-effective, scalable, and reliable AWS cloud.
; projects[awssdk][version] = "5.4"

; XML sitemap
; Creates a sitemap that conforms to the sitemaps.org specification. This helps search engines to more intelligently crawl a website and keep their results up to date. 
projects[xmlsitemap][version] = "2.0"


;___________________________________________________
;
;  LIBRARY MODULES
;___________________________________________________

; Libraries
; This module introduces a common repository for libraries.
; in sites/all/libraries resp. sites/<domain>/libraries for contributed modules.
projects[libraries][version] = "2.2"

; Chaos tool suite (ctools)
; Set of APIs and tools to improve the developer experience.
projects[ctools][version] = "1.4"
; @Patch: Adding a renderable-array block to a page gives errors in the admin UI (https://drupal.org/node/1925018)
; Error: strlen() expects parameter 1 to be string, array given in drupal_validate_utf8() in line 1587 of bootstrap.inc
; projects[ctools][patch][] = "https://drupal.org/files/ctools-n1925018-12.patch"

; Token
; Provides API for modules to use these tokens, and expose their own token values.
projects[token][version] = "1.5"

; Format Number
; Provides a method to configure number formats with configurable decimal point and thousand separators.
; Note: Currently there is no any stable release, so we've to use a development version.
projects[format_number][version] = "1.x-dev"

; Currency
; Provides currency conversion, currency information & metadata, and amount/price display functionality.
projects[currency][version] = "2.4"

; Units of Measurement
; Provides very simple API for working with unit types collections.
; projects[units][version] = "1.0-alpha1"

; Units API
; Converts between various weights and measurements.
; projects[unitsapi][version] = "1.0"

; Variable
; Provides a registry for meta-data about Drupal variables.
; projects[variable][version] = "2.2"

; jQuery Update
; Upgrades the version of jQuery in Drupal core to a newer version of jQuery.
projects[jquery_update][version] = "2.x-dev"

; BeautyTips
; Provides ballon-help style tooltips for any page element by integrating the BeautyTips jQuery Tooltip plugin.
projects[beautytips][version] = "2.0-beta2"

; Masonry
; Masonry is a dynamic grid layout plugin for jQuery.
projects[masonry][version] = "2.x-dev"
projects[masonry][patch][] = "https://drupal.org/files/issues/masonry-support_v311-2022371-5.patch"

; Masonry Library
libraries[masonry][directory_name] = "masonry"
libraries[masonry][type] = "library"
libraries[masonry][destination] = "libraries"
libraries[masonry][download][type] = "get"
libraries[masonry][download][url] = "http://masonry.desandro.com/masonry.pkgd.min.js"

; Advanced help
; Allows module developers to store their help outside the module system, in pure .html files.
; projects[advanced_help][version] = "1.0"

; Prepro
; The module gets access to the list of JS/CSS files added, and picks files from the array based on file syntax (eg .sass) and offers them
; to registered preprocessor modules (such as Sassy)
; projects[prepro][version] = "1.4"

; Sassy
; Integrates the PHPSass library to allow automatic SASS/SCSS compilation.
; projects[sassy][version] = "2.13"

; Voting API
; It helps developers who want to use a standardized API and schema for storing, retrieving, and tabulating votes for Drupal content.
projects[votingapi][version] = "2.12"

;___________________________________________________
;
;  CACHING
;___________________________________________________

; MemCache
; Integration between Drupal and Memcached.
; projects[memcache][version] = "1.0"

;___________________________________________________
;
;  ADMINISTRATION & DEVELOPMENT
;___________________________________________________

; Devel
; A suite of modules containing fun for module developers and themers
projects[devel] = "1.4"

; Admin
; The admin module provides UI improvements to the standard Drupal admin interface.
; projects[admin] = "2.0-beta3"

; Admin Menu
projects[admin_menu] = "3.0-rc3"

; Backup and Migrate
; Simplifies the task of backing up and restoring your Drupal database or copying your database from one Drupal site to another. It supports
; gzip, bzip and zip compression as well as automatic scheduled backups.
projects[backup_migrate] = "2.4"

; Local Task Blocks
; Turns the standard MENU_LOCAL_TASKS into blocks that can be repositioned or interacted with at the theme layer.
; projects[local_tasks_blocks] = "2.1"

; Admin Tools
; Is an addon module for the Admin module, which provides a sidebar navigation for selected roles.
; projects[admin_tool] = "1.1"

; Services
; A standardized solution of integrating external applications with Drupal. Service callbacks may be used with multiple interfaces like REST, XMLRPC, JSON,
; JSON-RPC, SOAP, AMF, etc. This allows a Drupal site to provide web services via multiple interfaces while using the same callback code.
; projects[services][version] = "3.3"

; Coder
; Utilizes regular expressions to review source code and version upgrade.
; projects[coder] = "1.2"

; Diff
; Extends Features and node revision functionality.
projects[diff][version] = "2.0"

; Environment Modules
; Allows a list of modules to be enabled in $conf['environment_modules'].
; projects[environment_modules] = "1.1"

; Job Scheduler
; Simple API for scheduling tasks once at a predetermined time or periodically at a fixed interval.
; projects[job_scheduler][version] = "2.0-alpha3"

; Admin Theme
; Drupal allows you to define a different theme for administration pages (Administer -> Site configuration -> Administration theme). By default this only
; applies to pages with a path starting with 'admin' and content editing pages. The Administration theme module allows you to use this theme on more pages like:
; batch processing pages, devel node load and render pages, coder code review pages, pages you define yourself in the provided textarea.
; projects[admin_theme] = "1.0"

;___________________________________________________
;
;  MEDIA
;___________________________________________________

; Media
; Provides an extensible framework for managing files and multimedia assets.
projects[media][version] = "2.0-alpha3"

; Styles
; Bundled with the Media module, is a fully featured module utilizing the API.
projects[styles][version] = "2.0-alpha8"

; File entity (fieldable files)
; Provides interfaces for managing files. It is required by the 7.x-2.x branch of the Media module.
projects[file_entity][version] = "2.0-alpha3"

; Lightbox2
; It is used to overlay images on the current page.
projects[lightbox2][version] = "1.0-beta1"

;___________________________________________________
;
;  OTHER
;___________________________________________________

; Legal
; Displays Terms & Conditions to users who want to register, and requires that they accept the T&C before their registration is accepted.
projects[legal][version] = "1.5"
