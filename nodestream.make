; $Id: nodestream.make,v 1.1.2.41 2010/11/19 02:38:28 dixon Exp $

; API

api = 2

; Core

core = 6.x

; Stable modules

projects[admin][version] = 2.0
projects[cache_actions] = 2.0-beta2
projects[cck][version] = 2.9
projects[crossclone][version] = 1.0-alpha2
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
projects[jquery_update][version] = 2.0-alpha1
projects[modalframe][version] = 1.7
projects[mollom][version] = 1.15
projects[noderelationships][version] = 1.6
projects[openlayers][version] = 2.0-alpha10
projects[panels][version] = 3.9
projects[panels_everywhere][version] = 1.1
projects[rules][version] = 1.4
projects[scheduler][version] = 1.8
projects[semanticviews][version] = 1.1
projects[strongarm][version] = 2.0
projects[token][version] = 1.15
projects[twitter][version] = 2.6
projects[vertical_tabs][version] = 1.0-rc1
projects[views_rss][version] = 1.0-beta5
projects[views_slideshow][version] = 2.3
projects[webform][version] = 3.5
projects[wysiwyg][version] = 2.2
projects[menutrails][version] = 1.1
projects[link][version] = 2.9
projects[libraries][version] = 1.0

; Unstable modules

; Required for support for library api.
projects[jquery_ui][download][type] = cvs
projects[jquery_ui][download][module] = contributions/modules/jquery_ui
projects[jquery_ui][download][revision] = DRUPAL-6--1:2011-02-10

; Parallell development with this profile.
projects[dynamic_formatters][download][type] = cvs
projects[dynamic_formatters][download][module] = contributions/modules/dynamic_formatters
projects[dynamic_formatters][download][revision] = DRUPAL-6--1

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


; Parallell development with this profile.
projects[nodereference_filters][download][type] = cvs
projects[nodereference_filters][download][module] = contributions/modules/nodereference_filters
projects[nodereference_filters][download][revision] = DRUPAL-6--1

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
