; $Id: nodestream.make,v 1.1.2.41 2010/11/19 02:38:28 dixon Exp $

; API

api = 2

; Core

core = 6.x

; Stable modules

projects[admin][version] = 2.0
projects[cache_actions] = 2.0-beta1
projects[cck][version] = 2.9
projects[crossclone][version] = 1.0-alpha1
projects[ctools][version] = 1.8
projects[disqus][version] = 1.6
projects[draggableviews][version] = 3.5
projects[emfield][version] = 1.26
projects[fb_social][version] = 1.0-beta4
projects[features][version] = 1.0
projects[filefield][version] = 3.9
projects[geotaxonomy][version] = 2.0-beta3
projects[i18n][version] = 1.7
projects[imageapi][version] = 1.9
projects[imagecache][version] = 2.0-beta10
projects[imagefield][version] = 3.9
projects[jquery_ui][version] = 1.4
projects[jquery_update][version] = 2.0-alpha1
projects[modalframe][version] = 1.7
projects[noderelationships][version] = 1.6
projects[openlayers][version] = 2.0-alpha10
projects[panels][version] = 3.9
projects[panels_everywhere][version] = 1.1
projects[rules][version] = 1.4
projects[scheduler][version] = 1.8
projects[semanticviews][version] = 1.1
projects[strongarm][version] = 2.0
projects[token][version] = 1.15
projects[translation_management][version] = 1.21
projects[twitter][version] = 2.6
projects[vertical_tabs][version] = 1.0-rc1
projects[views_rss][version] = 1.0-beta5
projects[views_slideshow][version] = 2.3
projects[webform][version] = 3.5
projects[wysiwyg][version] = 2.2

; Unstable modules

; Parallell development with this profile.
projects[dynamic_formatters][download][type] = cvs
projects[dynamic_formatters][download][module] = contributions/modules/dynamic_formatters
projects[dynamic_formatters][download][revision] = DRUPAL-6--1-0-ALPHA3

; Need dev for various features.
projects[menu_block][download][type] = cvs
projects[menu_block][download][module] = contributions/modules/menu_block
projects[menu_block][download][revision] = DRUPAL-6--2:2011-01-15

; Parallell development with this profile.
projects[ns_core][type] = module
projects[ns_core][download][type] = git
projects[ns_core][download][url] = git@github.com:nodeone/drupal-ns_core.git
projects[ns_core][download][branch] = master

; Required for bug fixes.
projects[translation_management][download][type] = "cvs"
projects[translation_management][download][module] = "contributions/modules/translation_management"
projects[translation_management][download][revision] = "DRUPAL-6--1:2011-01-17"

; Required for pluggable backend.
projects[views][download][type] = cvs
projects[views][download][module] = contributions/modules/views
projects[views][download][revision] = DRUPAL-6--3:2011-01-15

; Stable themes

projects[seven][version] = 1.0-beta13

; Unstable themes

; Parallell development with this profile.
projects[ns_theme][type] = theme
projects[ns_theme][download][type] = git
projects[ns_theme][download][url] = git@github.com:nodeone/drupal-ns_theme.git
projects[ns_theme][download][branch] = master

; Parallell development with this profile.
projects[precision][type] = theme
projects[precision][download][type] = git
projects[precision][download][url] = git@github.com:nodeone/drupal-precision.git
projects[precision][download][branch] = master

; Libraries

libraries[jquery_ui][download][type] = get
libraries[jquery_ui][download][url] = http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip
libraries[jquery_ui][destination] = modules/jquery_ui
libraries[jquery_ui][directory_name] = jquery.ui

libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.4/ckeditor_3.4.tar.gz
libraries[ckeditor][destination] = libraries

libraries[profiler][download][type] = get
libraries[profiler][download][url] = http://ftp.drupal.org/files/projects/profiler-6.x-2.0-beta1.tar.gz

; Patches

; http://drupal.org/node/885412
projects[disqus][patch][] = http://drupal.org/files/issues/disqus-views-relationships.patch

; http://drupal.org/node/906106
libraries[profiler][patch][] = http://drupal.org/files/issues/profiler.906106-11.patch

; http://drupal.org/node/954996
libraries[profiler][patch][] = http://drupal.org/files/issues/954996-profiler-trigger-faux-exportables-5.patch

; http://drupal.org/node/1013430
libraries[profiler][patch][] = http://drupal.org/files/issues/profiler-install-files.patch

; http://drupal.org/node/1009646
projects[views][patch][] = http://drupal.org/files/issues/views-dont-use-tokens-with-node-links.patch

; http://drupal.org/node/1029784
projects[translation_management][patch][] = http://drupal.org/files/issues/translation_management_remove_popup.patch

; http://drupal.org/node/1030956
projects[translation_management][patch][] = http://drupal.org/files/issues/translation_management_set_to_finished_if_empty_field_data.patch

; http://drupal.org/node/1033580
projects[translation_management][patch][] = http://drupal.org/files/issues/translation-management-fix-dashboard-submit-disable.patch

; Custom patch
projects[translation_management][patch][] = https://github.com/nodeone/drupal-nodestream/raw/master/patches/translation-management-wysiwyg-and-cck-multivalue.patch