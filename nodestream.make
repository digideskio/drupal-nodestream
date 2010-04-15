; $Id$

core = 6.x

; Pressflow

projects[pressflow][type] = "core"
projects[pressflow][download][type] = "get"
projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.16.77/+download/pressflow-6.16.77.tar.gz"
; http://drupal.org/node/265973
projects[pressflow][patch][] = "http://drupal.org/files/issues/xmlrpc_33.patch"

; Contrib

projects[admin][subdir] = "contrib"
projects[admin][version] = "2.0-beta2"

projects[admin_theme][subdir] = "contrib"
projects[admin_theme][version] = "1.3"

projects[cck][subdir] = "contrib"
projects[cck][version] = "2.6"

projects[content_taxonomy][subdir] = "contrib"
projects[content_taxonomy][version] = "1.0-rc2"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.3"

projects[diff][subdir] = "contrib"
projects[diff][version] = "2.0"

projects[draggableviews][subdir] = "contrib"
projects[draggableviews][version] = "3.4"

projects[email][subdir] = "contrib"
projects[email][version] = "1.2"

projects[emfield][subdir] = "contrib"
projects[emfield][version] = "1.19"

projects[features][subdir] = "contrib"
projects[features][version] = "1.0-beta6"

projects[filefield][subdir] = "contrib"
projects[filefield][version] = "3.2"

projects[flag][subdir] = "contrib"
projects[flag][version] = "2.0-beta2"

projects[flag_note][type] = "module"
projects[flag_note][subdir] = "contrib"
projects[flag_note][download][type] = "cvs"
projects[flag_note][download][module] = "contributions/modules/flag_note"
projects[flag_note][download][revision] = "DRUPAL-6--2:2010-04-15"

projects[imageapi][subdir] = "contrib"
projects[imageapi][version] = "1.6"

projects[imagecache][subdir] = "contrib"
projects[imagecache][version] = "2.0-beta10"

projects[imagefield][subdir] = "contrib"
projects[imagefield][version] = "3.2"

projects[jquery_ui][subdir] = "contrib"
projects[jquery_ui][version] = "1.3"

projects[jquery_update][subdir] = "contrib"
projects[jquery_update][version] = "1.1"

projects[modalframe][subdir] = "contrib"
projects[modalframe][version] = "1.6"

projects[noderelationships][subdir] = "contrib"
projects[noderelationships][version] = "1.5"

projects[openlayers][subdir] = "contrib"
projects[openlayers][version] = "1.0-rc1"

projects[panels][subdir] = "contrib"
projects[panels][version] = "3.3"

projects[panels_everywhere][subdir] = "contrib"
projects[panels_everywhere][version] = "1.0"

projects[pathauto][subdir] = "contrib"
projects[pathauto][version] = "1.3"

projects[pollfield][subdir] = "contrib"
projects[pollfield][version] = "1.11-beta1"

projects[print][subdir] = "contrib"
projects[print][version] = "1.10"

projects[revision_moderation][subdir] = "contrib"
projects[revision_moderation][version] = "1.0-alpha2"

projects[rules][subdir] = "contrib"
projects[rules][version] = "1.2"

projects[session_api][subdir] = "contrib"
projects[session_api][version] = "1.2"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0-rc1"

projects[tablefield][subdir] = "contrib"
projects[tablefield][version] = "1.0"

projects[token][subdir] = "contrib"
projects[token][version] = "1.12"

projects[vertical_tabs][subdir] = "contrib"
projects[vertical_tabs][version] = "1.0-rc1"

projects[views][subdir] = "contrib"
projects[views][version] = "2.10"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "1.9"

projects[views_customfield][subdir] = "contrib"
projects[views_customfield][version] = "1.0"

projects[views_slideshow][subdir] = "contrib"
projects[views_slideshow][version] = "2.0-beta4"

projects[webform][subdir] = "contrib"
projects[webform][version] = "3.0-beta4"

; Patched

projects[semanticviews][type] = "module"
projects[semanticviews][subdir] = "contrib"
projects[semanticviews][download][type] = "cvs"
projects[semanticviews][download][module] = "contributions/modules/semanticviews"
projects[semanticviews][download][revision] = "DRUPAL-6--1:2010-04-15"
; http://drupal.org/node/749666
projects[semanticviews][patch][] = "http://drupal.org/files/issues/semanticviews-comma-sep-stripes-2.patch"

; Custom

projects[imagecachereference][type] = "module"
projects[imagecachereference][subdir] = "custom"
projects[imagecachereference][download][type] = "git"
projects[imagecachereference][download][url] = "git@github.com:nodeone/drupal-imagecachereference.git"

; NodeStream

; See ./scripts/clone-private-repos.sh

;projects[ns-blog][type] = "module"
;projects[ns-blog][subdir] = "nodestream"
;projects[ns-blog][download][type] = "git"
;projects[ns-blog][download][url] = "git@github.com:nodeone/drupal-ns-blog.git"

;projects[ns-channel][type] = "module"
;projects[ns-channel][subdir] = "nodestream"
;projects[ns-channel][download][type] = "git"
;projects[ns-channel][download][url] = "git@github.com:nodeone/drupal-ns-channel.git"

;projects[ns-core][type] = "module"
;projects[ns-core][subdir] = "nodestream"
;projects[ns-core][download][type] = "git"
;projects[ns-core][download][url] = "git@github.com:nodeone/drupal-ns-core.git"

;projects[ns-imagecache][type] = "module"
;projects[ns-imagecache][subdir] = "nodestream"
;projects[ns-imagecache][download][type] = "git"
;projects[ns-imagecache][download][url] = "git@github.com:nodeone/drupal-ns-imagecache.git"

;projects[ns-layout][type] = "module"
;projects[ns-layout][subdir] = "nodestream"
;projects[ns-layout][download][type] = "git"
;projects[ns-layout][download][url] = "git@github.com:nodeone/drupal-ns-layout.git"

;projects[ns-test][type] = "module"
;projects[ns-test][subdir] = "nodestream"
;projects[ns-test][download][type] = "git"
;projects[ns-test][download][url] = "git@github.com:nodeone/drupal-ns-test.git"

;projects[ns-ui][type] = "module"
;projects[ns-ui][subdir] = "nodestream"
;projects[ns-ui][download][type] = "git"
;projects[ns-ui][download][url] = "git@github.com:nodeone/drupal-ns-ui.git"

; Developer

projects[devel][subdir] = "developer"
projects[devel][version] = "1.18"

projects[simpletest][subdir] = "developer"
projects[simpletest][version] = "2.10"

; Themes

; See ./scripts/clone-private-repos.sh

;projects[ns-theme][type] = "theme"
;projects[ns-theme][download][type] = "git"
;projects[ns-theme][download][url] = "git@github.com:nodeone/drupal-ns-theme.git"

projects[precision][type] = "theme"
projects[precision][download][type] = "git"
projects[precision][download][url] = "git@github.com:nodeone/drupal-precision.git"

; Libraries

libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery.ui-1.6.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/contrib/jquery_ui"
