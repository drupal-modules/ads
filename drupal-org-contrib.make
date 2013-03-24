; drush make build file for drupal.org packaging.
; This file defines Drupal contributed modules.

api = 2
core = 7.x

;___________________________________________________
;
;  FIELDS MODULES
;___________________________________________________

; DATE
; This package contains both a flexible date/time field type Date field and a Date API that other modules can use.
projects[date][version] = "2.6"

; EMAIL
; This module provides a field type for email addresses.
projects[email][version] = "1.2"

; ADDRESS FIELD
; A Drupal 7 field module to hold postal addresses, implementing a subset of the fields defined in the xNAL standard.
projects[addressfield][version] = "1.0-beta3"

; PHONE
; This module provides a phone field type.
projects[phone][version] = "2.x-dev"
projects[phone][download][type] = git
projects[phone][download][branch] = "7.x-2.x"
projects[phone][download][revision] = 0df2e253a80f87f3fd886437d9021a06e7202de9

; FIELD GROUP
; Fieldgroup will, as the name implies, group fields together. All fieldable entities will have the possibility to add groups to wrap their fields together.
; Fieldgroup comes with default HTML wrappers like vertical tabs, horizontal tabs, accordions, fieldsets or div wrappers.
projects[field_group][version] = "1.1"

; FIELD COLLECTION
; Provides a field-collection field, to which any number of fields can be attached. A field collection is internally represented as an entity, which is embedded
; in the host entity. Thus, if desired field collections may be viewed and edited separately too.
projects[field_collection][version] = "1.0-beta5"

; REFERENCES
; This project provides D7 versions of the 'node_reference' and 'user_reference' field types, that were part of the CCK package in D6, at functional parity with
; the D6 counterparts. See http://drupal.org/node/533222 for details.
projects[references][version] = "2.0"

; CONDITIONAL FIELDS
; Define dependencies between fields based on their states and values. Conditional Fields for Drupal 7 is an user interface to the new States API, plus the
; ability to modify fields appearance and behavior on certain conditions when viewing content.
projects[conditional_fields][version] = "3.x-dev"
projects[conditional_fields][download][type] = git
projects[conditional_fields][download][branch] = "7.x-3.x"
projects[conditional_fields][download][revision] = cd29b003a592d375f3fdb4c46f5639d0f26ed0be
; @Patch: Add capacity to use conditional_fields on field_collection item.
projects[conditional_fields][patch][] = "http://drupal.org/files/conditional_fields-fix_for_collections_11.patch"
; @Patch: Add capapcity to use conditional_fields on field_collection item with multiple values.
projects[conditional_fields][patch][] = "http://drupal.org/files/conditional_fields_fixed_multiple_field_collection_fields_1464950-62_0.patch"

; LINK
; Provides a standard custom content field for links.
projects[link][version] = "1.0"

; DOUBLE FIELD
; Double field is a small module written to provide extensions to Drupal's core Fields.
; By this module you can divide your fields into two seporate parts.
projects[double_field][version] = "2.3"

; FIELD VALIDATION
; This module allowing you to specify validation rules for your field instances.
projects[field_validation][version] = "2.3"

;___________________________________________________
;
;  ENTITY MODULES
;___________________________________________________

; ENTITY
; This module extends the entity API of Drupal core in order to provide a unified way to deal with entities and their properties. Additionally, it provides an
; entity CRUD controller, which helps simplifying the creation of new entity types.
projects[entity][version] = "1.0"

; ENTITY REFERENCE
; Provides a field type that can reference arbitrary entities.
projects[entityreference][version] = "1.0"

; PROFILE2
; Designed to be the successor of the core profile module, which is deprecated for Drupal 7. In contrast to the deprecated module this module provides a new,
; fieldable 'profile' entity - leverage the power of fields!
projects[profile2][version] = "1.3"

;___________________________________________________
;
;  USER MODULES
;___________________________________________________

; LOGINTOBOGGAN
; The LoginToboggan module offers several modifications of the Drupal login system in an external module by offering many features and usability improvements.
projects[logintoboggan][version] = "1.3"

; EMAIL REGISTRATION
; Allow users to register and login using only an email address. Users can then log-in using their email address and password for authentication.
projects[email_registration][version] = "1.1"

;___________________________________________________
;
;  MENU MODULES
;___________________________________________________

; PATH AUTO
; The Pathauto module automatically generates URL/path aliases for various kinds of content (nodes, taxonomy terms, users) without requiring the user to
; manually specify the path alias. This allows you to have URL aliases like /category/my-node-title instead of /node/123. The aliases are based upon a "pattern"
; system that uses tokens which the administrator can change.
projects[pathauto][version] = "1.1"

; SITEMAP
; This module provides a site map that gives visitors an overview of your site. It can also display the RSS feeds for all blogs and categories.
projects[site_map][version] = "1.0"

; MENU BLOCK
; Have you ever used the Main and Secondary menu links feature on your theme and wondered "how the hell do I display any menu items deeper than that?" Well,
; that�s what this module does. It provides configurable blocks of menu trees starting with any level of any menu. And more!
projects[menu_block] = "2.3"

; MENU ATTRIBUTES
; This simple module allows you to specify some additional attributes for menu items such as id, name, class, style, and rel.
projects[menu_attributes][version] = "1.0-rc2"

;___________________________________________________
;
;  TRANSLATION MODULES
;___________________________________________________

; I18N
; This is a collection of modules to extend Drupal core multilingual capabilities and be able to build real life multilingual sites.
projects[i18n] = "1.7"

;___________________________________________________
;
;  FEEDS MODULES
;___________________________________________________

; FEEDS
; Import or aggregate data as nodes, users, taxonomy terms or simple database records.
projects[feeds][version] = "2.0-alpha7"

;___________________________________________________
;
;  FLAG MODULES
;___________________________________________________

; FLAG
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

; RULES
; The rules module allows site administrators to define conditionally executed actions based on occurring events (known as reactive or ECA rules). It's a
; replacement with more features for the trigger module in core and the successor of the Drupal 5 workflow-ng module.
projects[rules][version] = "2.2"

; RULES AUTO TAG
; The Rules Autotag module takes a light-weight approach for autotagging full-text content by matching taxonomy terms (and optional Synonyms). Rules Autotag
; depends on the Rules module. Functionality is provided on different layers.
projects[rules_autotag][version] = "1.1"

; RULES LINK
; This module lets you create links which trigger arbitrary functionality with the help of Rules.
projects[rules_link][version] = "1.0-beta4"
projects[rules_link][download][type] = git
projects[rules_link][download][branch] = "7.x-1.0"
projects[rules_link][download][revision] = 63975cf69c576af6e3154f0f6cfa9f9d27cff10b

;___________________________________________________
;
;  FEATURE MODULES
;___________________________________________________

; FEATURES
projects[features][version] = "1.0"
; @Patch: Add capacity to define more than one term with the same path.
projects[features][patch][] = "http://drupal.org/files/927566-50-multiple-link_path.patch"

; FEATURES EXTRA
projects[features_extra][version] = "1.0-alpha1"

; STRONGARM
projects[strongarm][version] = "2.0"

;___________________________________________________
;
;  MAIL
;___________________________________________________

; MIME MAIL
projects[mimemail][version] = "1.0-alpha2"

; SMTP
; This module allows Drupal to bypass the PHP mail() function and send email directly to an SMTP server. The module supports SMTP authentication and can even
; connect to servers using SSL if supported by PHP.
projects[smtp] = "1.0-beta2"

;___________________________________________________
;
;  CONTENT MODULES
;___________________________________________________

; WORKFLOW
; The workflow module allows the creation and assignment of arbitrary workflows to Drupal node types. Workflows are made up of workflow states. For example, a
; workflow with the states Draft, Review, and Published could be assigned to the Story node type.
projects[workflow][version] = "1.0"

; Context allows you to manage contextual conditions and reactions for different portions of your site. You can think of each context as representing a
; "section" of your site. For each context, you can choose the conditions that trigger this context to be active and choose different aspects of Drupal that
; should react to this active context.
; projects[context][version] = "3.0-beta6"

; COUNTRIES
; This module provides many country related tasks. Country fields, token support, et al.
projects[countries] = "2.1"

;___________________________________________________
;
;  TAXONOMY MODULES
;___________________________________________________

; TAXONOMY CSV
; This module allows you to import or export taxonomy from or to a CSV (comma-separated values) file or with a copy-and-paste text.
projects[taxonomy_csv][version] = "5.10"

; CONTENT TAXONOMY
; The module provides extensions to Drupal's core Taxonomy Term Reference Fields.
projects[content_taxonomy][version] = "1.0-beta2"

; TERM LEVEL
; This module provides a field type for referencing terms with a level to an entity, e.g. someone can add the term "Java" with the level "Expert" to a node.
; The levels can be defined in the field settings and consist of a numeric level key and a human readable level label. The structure of the specified vocabulary
; either has to be a flat-list or a single hierarchy with two hierarchy-levels, where the parents act as grouping terms.
projects[term_level][version] = "1.1"

;___________________________________________________
;
;  FORMS MODULES
;___________________________________________________

; IFE
; IFE or Inline Form Errors allows you to place form submission error inline with the form elements. Three options are provided for setting your inline error
; behaviour. You can configure the default behaviour or override the behaviour on a per form basis. You can add as many forms as you like.
projects[ife] = "2.0-alpha2"

;___________________________________________________
;
;  SEARCH, FACET & SOLR MODULES
;___________________________________________________

; SEARCH API
; This module provides a framework for easily creating searches on any entity known to Drupal, using any kind of search engine. For site administrators, it is a
; great alternative to other search solutions, since it already incorporates facetting support and the ability to use the Views module for displaying search
; results, filters, etc. Also, with the Apache Solr integration, a high-performance search engine is available for this module. Developers, on the other hand,
; will be impressed by the large flexibility and numerous ways of extension the module provides. Hence, the growing number of additional contrib modules (linked
; below), providing additional functionality or helping users customize some aspects of the search process.
projects[search_api][version] = "1.4"

; SEARCH API SAVED SEARCHES
; This module offers users the ability to save searches executed with the Search API module and be notified of new results. Notifications are done via mails
; with token-replacement, their frequency can be configured both by admins and/or users and saved searches can also be created without first executing the
; search.
projects[search_api_saved_searches][version] = "1.0"

; SEARCH API AUTOCOMPLETE
; This module provides autocomplete functionality for Search API searches, similar to the Apache Solr autocomplete module. Autocompletion can be activated and
; configured for each search (all search views and pages) individually, so you have fine-grained control over where autocompletion can be used � and by whom.
projects[search_api_autocomplete][version] = "1.0-beta2"

; SEARCH API SOLR
; This module provides a Solr backend for the Search API module. The backend uses, like the popular Apache Solr Search Integration module, Apache Solr servers
; for indexing and searching content. It has great performance, is suitable even for use on large commercial websites and supports facets and multi-index
; searches.
projects[search_api_solr][version] = "1.0-rc3"

; SEARCH API RANGES
projects[search_api_ranges] = "1.4"
; @Patch: Fixes problem with Range slider
projects[search_api_ranges][patch][] = "http://drupal.org/files/search_api_ranges.module.minmax-alter.patch"

; FACET API (ALSO CONTAINS CURRENT SEARCH MODULE)
projects[facetapi][version] = "1.2"
; @Patch: Fixes Warning: array_search() expects parameter 2 to be array, null given
; projects[facetapi][patch][] = "http://drupal.org/files/1900974-1-facetapi-rebuild_delta_map_cache.patch"

; Facet API Pretty Paths
; projects[facetapi_pretty_paths][version] = "1.0-beta2"

;___________________________________________________
;
;  MESSAGING MODULES
;___________________________________________________

; MESSAGE
; Message module is Drupal 7's answer to activity-streams and a flexible Messaging & Notifications system.
projects[message][version] = "1.7"

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

;___________________________________________________
;
;  CLIENTSIDE MODULES
;___________________________________________________

; CLIENTSIDE VALIDATION
; This module adds clientside validation (aka "Ajax form validation") for all forms and webforms using jquery.validate. The included jquery.validate.js file is
; patched because we needed to be able to hide empty messages.
projects[clientside_validation][download][type] = get
projects[clientside_validation][download][directory_name] = "clientside_validation"
projects[clientside_validation][download][url] = http://ftp.drupal.org/files/projects/clientside_validation-7.x-1.37.tar.gz

;___________________________________________________
;
;  3rd PARTY INTEGRATION MODULES
;___________________________________________________

; WYSIWYG
; Allows to use client-side editors to edit content. It simplifies the installation and integration of the editor of your choice. This module replaces all other
; editor integration modules. No other Drupal module is required.
projects[wysiwyg][version] = "2.2"

; GOOGLE ANALYTICS
; Adds the Google Analytics web statistics tracking system to your website.
projects[google_analytics][version] = "1.3"

; CLAM AV
; Drupal integration with the ClamAV virus scanner. This module will verify that files uploaded to a site are not infected with a virus, and prevent infected
; files from being saved.
projects[clamav][version] = "1.0-alpha2"

; LESS
; This is a preprocessor for LESS (http://lesscss.org/) files.
projects[less][version] = "2.6"

;___________________________________________________
;
;  LIBRARY MODULES
;___________________________________________________

; CTOOLS
; This suite is primarily a set of APIs and tools to improve the developer experience. It also contains a module called the Page Manager whose job is to manage
; pages. In particular it manages panel pages, but as it grows it will be able to manage far more than just Panels.
projects[ctools][version] = "1.2"

;___________________________________________________
;
;  OTHER
;___________________________________________________

; TOKEN
; Tokens are small bits of text that can be placed into larger documents via simple placeholders, like %site-name or [user]. The Token module provides a central
; API for modules to use these tokens, and expose their own token values.
projects[token][version] = "1.1"

; LIBRARIES
; The common denominator for all Drupal modules/profiles/themes that integrate with external libraries. This module introduces a common repository for libraries
; in sites/all/libraries resp. sites/<domain>/libraries for contributed modules.
projects[libraries][version] = "2.0"

; MIGRATE
; The migrate module provides a flexible framework for migrating content into Drupal from other sources (e.g., when converting a web site from another CMS to
; Drupal). Out-of-the-box, support for creating core Drupal objects such as nodes, users, files, terms, and comments are included - it can easily be extended
; for migrating other kinds of content. Content is imported and rolled back using a bundled web interface (Migrate UI module) or included Drush commands
; (strongly recommended).
projects[migrate][version] = "2.5"

;___________________________________________________
;
;  PANEL MODULES
;___________________________________________________

; PANELS
; The Panels module allows a site administrator to create customized layouts for multiple uses. At its core it is a drag and drop content manager that lets you
; visually design a layout and place content within that layout. Integration with other systems allows you to create nodes that use this, landing pages that use
; this, and even override system pages such as taxonomy and the node page so that you can customize the layout of your site with very fine grained permissions.
projects[panels][version] = "3.3"

;___________________________________________________
;
;  VIEWS MODULES
;___________________________________________________

; VIEWS
projects[views][version] = "3.5"

;___________________________________________________
;
;  ADMINISTRATION MODULES
;___________________________________________________

; DEVEL
; A suite of modules containing fun for module developers and themers
projects[devel] = "1.3"
; @Patch: Use devel_create_greeking for text field instead of user_password - http://drupal.org/node/1010394
projects[devel][patch][] = "http://drupal.org/files/issues/devel-greeking-text-field-1010394.patch"

; BACKUP AND MIGRATE
; Backup and Migrate simplifies the task of backing up and restoring your Drupal database or copying your database from one Drupal site to another. It supports
; gzip, bzip and zip compression as well as automatic scheduled backups.
projects[backup_migrate] = "2.4"

; ADMIN
; The admin module provides UI improvements to the standard Drupal admin interface.
; projects[admin] = "2.0-beta3"

; ADMIN MENU
projects[admin_menu] = "3.0-rc3"

; LOCAL TASK BLOCKS
; Local tasks blocks turns the standard MENU_LOCAL_TASKS into blocks that can be repositioned or interacted with at the theme layer. It provides 2 variations,
; each representing a different presentation of the tasks on a page.
projects[local_tasks_blocks] = "2.1"

; ADMIN TOOLS
; Admin Tools is an addon module for the Admin module, which provides a sidebar navigation for selected roles.
projects[admin_tools] = "1.1"

; SERVICES
; A standardized solution of integrating external applications with Drupal. Service callbacks may be used with multiple interfaces like REST, XMLRPC, JSON,
; JSON-RPC, SOAP, AMF, etc. This allows a Drupal site to provide web services via multiple interfaces while using the same callback code.
projects[services][version] = "3.3"

; CODER
; The Coder project includes two developer modules that assist with code review (Coder Review maintained by douggreen and stella) and code manipulation (Coder
; Upgrade maintained by solotandem). Each of the modules supports a plug-in extensible hook system so contributed modules can define additional review standards
; and upgrade routines.
projects[coder] = "1.2"

; DIFF
; Extends Features and node revision functionality.
projects[diff][version] = "2.0"

;___________________________________________________
;
;  COMMENTED OUT
;___________________________________________________

; TAXONOMY MANAGER
; projects[taxonomy_manager][version] = "1.0-rc1"

; ENVIRONMENT MODULES
; Allows a list of modules to be enabled in $conf['environment_modules'].
; projects[environment_modules] = "1.1"

; ADMIN THEME
; Drupal allows you to define a different theme for administration pages (Administer -> Site configuration -> Administration theme). By default this only
; applies to pages with a path starting with 'admin' and content editing pages. The Administration theme module allows you to use this theme on more pages like:
; batch processing pages, devel node load and render pages, coder code review pages, pages you define yourself in the provided textarea.
; projects[admin_theme] = "1.0"

; JOB SCHEDULER
; Simple API for scheduling tasks once at a predetermined time or periodically at a fixed interval.
; projects[job_scheduler][version] = "2.0-alpha3"

; FIELD PERMISSIONS
; The Field Permissions module allows site administrators to set field-level permissions to edit, view and create fields on any entity.
; projects[field_permissions][version] = "1.0-beta2"

; ROLE EXPORT
; the Role Export module allows roles to have machine_names and generates a unique role id (rid) based off of the machine_name. Roles can be exported with
; Features and get the exact same rid if imported on other sites. Because of this unique rid there is no need to create plugins per contrib module that use the
; rid in their export code, such as Views, Ctools, Rules, etc. References to this role id will not break on other sites.
; projects[role_export][version] = "1.0"

; WEBFORM
; Webform is the module for making surveys in Drupal. After a submission, users may be sent an e-mail "receipt" as well as sending a notification to
; administrators. Results can be exported into Excel or other spreadsheet applications. Webform also provides some basic statistical review and has and
; extensive API for expanding its features.
; projects[webform] = "3.18"

; SEARCH API DATABASE SEARCH
; This module provides a backend for the Search API that uses a normal database to index data. It is therefore a cheap and simple alternative to backends like
; Solr, suited for test environments or smaller sites.
; projects[search_api_db][version] = "1.x-dev"
; projects[search_api_db][download][type] = git
; projects[search_api_db][download][branch] = 7.x-1.x
; projects[search_api_db][download][revision] = a6203a3ec3be86b455478f8fb38ee6f39bcab715

; SYNONYMS
; Synonyms is a small module that makes it possible to search for taxonomy term synonyms via the built-in search module.
; projects[synonyms][version] = "1.x-dev"
; projects[synonyms][download][type] = git
; projects[synonyms][download][branch] = 7.x-1.x
; projects[synonyms][download][revision] = 949472be5d105f12d89350271e07e2c56e1a92f8

; VIEWS BULK OPERATIONS
; This module augments Views by allowing bulk operations to be executed on the displayed rows. It does so by showing a checkbox in front of each node, and
; adding a select box containing operations that can be applied. Drupal Core or Rules actions can be used.
; projects[views_bulk_operations][version] = "3.x-dev"
; projects[views_bulk_operations][download][type] = git
; projects[views_bulk_operations][download][branch] = 7.x-3.x
; projects[views_bulk_operations][download][revision] = 50be134537e7f7151d15670ee7d9e1099fb1f565
