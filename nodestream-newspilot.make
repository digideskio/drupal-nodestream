; $Id$

; Make sure to run 'nodestream.make' to build the NodeStream core before you
; run this make file. Then run 'drush make --no-core nodestream-newspilot.make'
; to build the necessary packages for the NodeStream / Newspilot integration.

core = 6.x

; Contrib

projects[autodeploy][subdir] = "contrib"
projects[autodeploy][version] = "1.0-beta2"

projects[encrypt][subdir] = "contrib"
projects[encrypt][version] = "1.0"

projects[services][subdir] = "contrib"
projects[services][version] = "2.0"

; Patched

projects[deploy][type] = "module"
projects[deploy][subdir] = "contrib"
projects[deploy][download][type] = "cvs"
projects[deploy][download][module] = "contributions/modules/deploy"
projects[deploy][download][revision] = "DRUPAL-6--1:2010-04-15"
; http://drupal.org/node/642584
projects[deploy][patch][] = "http://drupal.org/files/issues/642584-8.patch"

; Custom

; See ./scripts/clone-private-repos.sh

;projects[newspilot_service][type] = "module"
;projects[newspilot_service][subdir] = "custom"
;projects[newspilot_service][download][type] = "git"
;projects[newspilot_service][download][url] = "git@github.com:nodeone/drupal-newspilot-service.git"
