<?php
// $Id$

/**
 * @file
 * This is the installation profile for NodeStream.
 *
 * @todo Abstract nodestream_profile_tasks() into smaller functions for
 * better overview.
 */

/**
 * Implementation of hook_profile_details().
 */
function nodestream_profile_details() {
  return array(
    'name' => 'NodeStream',
    'description' => 'NodeStream is a Drupal distribution aimed at newspaper sites or sites with newspaper like content.',
  );
}

/**
 * Implementation of hook_profile_modules().
 *
 * Note that modules defined here is not hard dependencies. Additional modules
 * will be required as dependencies to other modules here.
 */
function nodestream_profile_modules() {
  return array(
    // Core.
    'comment',
    'dblog',
    'help',
    'menu',
    'path',
    'php',
    'taxonomy',
    'update',

    // Contrib.
    'admin',
    'admin_theme',
    'content',
    'content_taxonomy',
    'content_taxonomy_autocomplete',
    'content_taxonomy_options',
    'ctools',
    'date',
    'date_api',
    'date_popup',
    'date_timezone',
    'devel',
    'diff',
    'draggableviews',
    'draggableviews_cck',
    'email',
    'emaudio',
    'emfield',
    'emvideo',
    'features',
    'fieldgroup',
    'filefield',
    'flag',
    'flag_note',
    'imageapi',
    'imageapi_gd',
    'imagecache',
    'imagecache_ui',
    'imagecachereference',
    'imagefield',
    'jquery_ui',
    'jquery_update',
    'modalframe',
    'nodereference',
    'noderelationships',
    'number',
    'openlayers',
    'openlayers_behaviors',
    'openlayers_cck',
    'openlayers_layers',
    'openlayers_presets_ui',
    'openlayers_views',
    'optionwidgets',
    'pathauto',
    'panels',
    'panels_everywhere',
    'page_manager',
    'pollfield',
    'print',
    'revision_moderation',
    'rules',
    'rules_admin',
    'tablefield',
    'text',
    'token',
    'semanticviews',
    'session_api',
    'strongarm',
    'vertical_tabs',
    'views',
    'views_bulk_operations',
    'views_content',
    'views_customfield',
    'views_slideshow',
    'views_slideshow_singleframe',
    'views_ui',
    'webform',

    // NodeStream.
    'ns_blog',
    'ns_channel',
    'ns_core',
    'ns_imagecache',
    'ns_layout',
    'ns_openlayers',
    'ns_test',
    'ns_ui',
  );
}

/**
 * Implementation of hook_profile_task_list().
 */
function nodestream_profile_task_list() {
}

/**
 * Implementation of hook_profile_tasks().
 *
 * @todo Find a way to enable page manager pages.
 */
function nodestream_profile_tasks(&$task, $url) {

  // Define Pathauto settings before saving vocabularies and terms.
  variable_set('pathauto_node_pattern', '');
  variable_set('pathauto_taxonomy_pattern', '');
  variable_set('pathauto_user_pattern', '');

  // Definition of default vocabularies.
  $vocabularies = array(
    array(
      'name' => 'Channel',
      'relations' => TRUE,
      'hierarchy' => FALSE,
      'multiple' => TRUE,
      'required' => FALSE,
      'tags' => FALSE,
      'module' => 'taxonomy',
      'weight' => -10,
      'nodes' => array(
        'ns_blurb' => TRUE,
      ),
    ),
    array(
      'name' => 'Region',
      'relations' => TRUE,
      'hierarchy' => TRUE,
      'multiple' => FALSE,
      'required' => FALSE,
      'tags' => FALSE,
      'module' => 'taxonomy',
      'weight' => -9,
      'nodes' => array(
        'ns_blurb' => TRUE,
      ),
    ),
    array(
      'name' => 'Theme',
      'relations' => TRUE,
      'hierarchy' => FALSE,
      'multiple' => TRUE,
      'required' => FALSE,
      'tags' => TRUE,
      'module' => 'taxonomy',
      'weight' => -8,
      'nodes' => array(
        'ns_article' => TRUE,
      ),
    ),
    array(
      'name' => 'Tags',
      'relations' => TRUE,
      'hierarchy' => FALSE,
      'multiple' => TRUE,
      'required' => FALSE,
      'tags' => TRUE,
      'module' => 'taxonomy',
      'weight' => -7,
      'nodes' => array(
        'ns_article' => TRUE,
        'ns_post' => TRUE,
      ),
    ),
    array(
      'name' => 'Bar',
      'relations' => TRUE,
      'hierarchy' => FALSE,
      'multiple' => TRUE,
      'required' => FALSE,
      'tags' => TRUE,
      'module' => 'taxonomy',
      'weight' => -6,
      'nodes' => array(
        'ns_article' => TRUE,
      ),
    ),
  );

  // Save the vocabularies.
  foreach ($vocabularies as $vocabulary) {
    taxonomy_save_vocabulary($vocabulary);
  }

  // Definition of default terms.
  $terms = array(
    array(
      'name' => 'Front page',
      'vid' => 1,
      'weight' => -10,
    ),
    array(
      'name' => 'Business',
      'vid' => 1,
      'weight' => -9,
    ),
    array(
      'name' => 'Technology',
      'vid' => 1,
      'weight' => -8,
    ),
    array(
      'name' => 'Branding',
      'vid' => 2,
      'weight' => -10,
    ),
    array(
      'name' => 'Main',
      'vid' => 2,
      'weight' => -9,
    ),
    array(
      'name' => 'Header alpha',
      'vid' => 2,
      'weight' => -8,
      'parent' => array(5),
    ),
    array(
      'name' => 'Header beta',
      'vid' => 2,
      'weight' => -7,
      'parent' => array(5),
    ),
    array(
      'name' => 'Aside',
      'vid' => 2,
      'weight' => -6,
    ),
  );

  // Save the terms.
  foreach ($terms as $term) {
    taxonomy_save_term($term);
  }

  // Site front page.
  variable_set('site_frontpage', 'taxonomy/term/1');

  // Define some basic menu links.
  $menu_links = array(
    array(
      'link_title' => 'Front page',
      'link_path' => '<front>',
      'menu_name' => 'primary-links',
      'weight' => -10,
      'hidden' => FALSE,
    ),
    array(
      'link_title' => 'Business',
      'link_path' => 'taxonomy/term/2',
      'menu_name' => 'primary-links',
      'weight' => -9,
      'hidden' => FALSE,
    ),
    array(
      'link_title' => 'Technology',
      'link_path' => 'taxonomy/term/3',
      'menu_name' => 'primary-links',
      'weight' => -8,
      'hidden' => FALSE,
    ),
  );

  // Save menu links.
  foreach ($menu_links as $menu_link) {
    menu_link_save($menu_link);
  }

  // Create an admin role.
  db_query("INSERT INTO {role} (rid, name) VALUES (3, 'admin'), (4, 'editor')");

  // Add user 1 to the admin role.
  db_query("INSERT INTO {users_roles} VALUES (1, 3)");

  // Remove all blocks.
  db_query("TRUNCATE {blocks}");

  // Only admin users can create new user accounts on the site.
  variable_set('user_register', 0);

  // No user configurable timezones.
  variable_set('configurable_timezones', 0);

  // First day of week is Monday.
  variable_set('date_first_day', 1);

  // Date formats, the ISO way.
  variable_set('date_format_short', 'Y-m-d H:i');
  variable_set('date_format_short_custom', 'Y-m-d H:i');
  variable_set('date_format_medium', 'D, Y-m-d H:i');
  variable_set('date_format_medium_custom', 'D, Y-m-d H:i');
  variable_set('date_format_long', 'l, j F, Y - H:i');
  variable_set('date_format_long_custom', 'l, j F, Y - H:i');

  // Theme related stuff.
  variable_set('theme_default', 'ns_theme');
  variable_set('admin_theme', 'garland');
  variable_set('node_admin_theme', 1);
  variable_set('admin_theme_path', "noderelationships/*\ntaxonomy/term/*/*/admin\nhelp/*");
  variable_set('admin_theme_admin_theme_batch', 1);

  // Configure the Admin toolbar.
  variable_set(
    'admin_toolbar',
    array(
      'layout' => 'vertical',
      'position' => 'nw',
      'blocks' => array(
        'admin-create' => 'admin-create',
        'admin-menu' => 'admin-menu',
        'admin-devel' => 'admin-devel',
        'admin-theme' => FALSE,
        'ns_ui-channel_editor' => 'ns_ui-channel_editor',
      ),
    )
  );

  // Set up Node Relationships and widgets.
  module_load_include('inc', 'noderelationships', 'noderelationships');
  noderelationships_settings_save(
    'ns_article',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_article_attachment' => 'noderelationships_noderef:page_grid',
          'field_ns_article_byline' => 'noderelationships_noderef:page_grid',
          'field_ns_article_image' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_article_attachment' => 'field_ns_article_attachment',
          'field_ns_article_byline' => 'field_ns_article_byline',
          'field_ns_article_image' => 'field_ns_article_image',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_audio',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_audio_credit' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_audio_credit' => 'field_ns_audio_credit',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_blog',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_blog_blogger' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_blog_blogger' => 'field_ns_blog_blogger',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_blurb',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_blurb_image' => 'noderelationships_noderef:page_grid',
          'field_ns_blurb_parent' => 'noderelationships_noderef:page_grid',
          'field_ns_blurb_reference' => 'noderelationships_noderef:page_grid',
          'field_ns_blurb_style' => 'noderelationships_noderef:page_grid',
          'field_ns_blurb_style_child' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_blurb_image' => 'field_ns_blurb_image',
          'field_ns_blurb_parent' => 'field_ns_blurb_parent',
          'field_ns_blurb_reference' => 'field_ns_blurb_reference',
          'field_ns_blurb_style' => 'field_ns_blurb_style',
          'field_ns_blurb_style_child' => 'field_ns_blurb_style_children',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_image',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_image_credit' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_image_credit' => 'field_ns_image_credit',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_post',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_post_blog' => 'noderelationships_noderef:page_grid',
          'field_ns_post_blogger' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_post_blog' => 'field_ns_post_blog',
          'field_ns_post_blogger' => 'field_ns_post_blogger',
        ),
      ),
    )
  );
  noderelationships_settings_save(
    'ns_video',
    array(
      'noderef' => array(
        'search_and_reference_view' => array(
          'field_ns_video_credit' => 'noderelationships_noderef:page_grid',
        ),
        'create_and_reference' => array(
          'field_ns_video_credit' => 'field_ns_video_credit',
        ),
      ),
    )
  );

  // Delete the default webform content type.
  node_type_delete('webform');

  // Enable some page panels.
  variable_set('page_manager_term_view_disabled', 0);
  variable_set('page_manager_node_view_disabled', 0);
  variable_set('panels_everywhere_site_template_enabled', 1);

  // Features won't make CCK recognize new field defined by features if we
  // don't do this.
  drupal_flush_all_caches();
}
