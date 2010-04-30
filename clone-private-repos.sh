#!/bin/sh

# At the moment 'drush_make' doesn't support private GitHub repos. So to clone
# all the necessary private repos for NodeStream, run this file from the Drupal
# root. Example: 'sh ./path/to/clone-private-repos.sh'

ROOT_PATH="$1"

if [ "$ROOT_PATH" == "" ];
then
  ROOT_PATH="."
fi

MODULE_PATH="$ROOT_PATH/sites/all/modules/nodestream"
THEME_PATH="$ROOT_PATH/sites/all/themes"

git clone git@github.com:nodeone/drupal-newspilot-service.git "$MODULE_PATH/newspilot_service"

git clone git@github.com:nodeone/drupal-ns-blog.git "$MODULE_PATH/ns_blog"

git clone git@github.com:nodeone/drupal-ns-channel.git "$MODULE_PATH/ns_channel"

git clone git@github.com:nodeone/drupal-ns-core.git "$MODULE_PATH/ns_core"

git clone git@github.com:nodeone/drupal-ns-imagecache.git "$MODULE_PATH/ns_imagecache"

git clone git@github.com:nodeone/drupal-ns-layout.git "$MODULE_PATH/ns_layout"

git clone git@github.com:nodeone/drupal-ns-layout.git "$MODULE_PATH/ns_openlayers"

git clone git@github.com:nodeone/drupal-ns-test.git "$MODULE_PATH/ns_test"

git clone git@github.com:nodeone/drupal-ns-ui.git "$MODULE_PATH/ns_ui"

git clone git@github.com:nodeone/drupal-ns-theme.git "$THEME_PATH/ns_theme"
