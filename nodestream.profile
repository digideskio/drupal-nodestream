<?php
// $Id: nodestream.profile,v 1.1.2.29 2010/11/13 18:21:24 dixon Exp $

!function_exists('profiler_v2') ? require_once('libraries/profiler/profiler.inc') : FALSE;
profiler_v2('nodestream');

/**
 * Helper function for fetching the order of demo content files.
 */
function nodestream_profile_content_types() {
  return array(
    'contributor',
    'video',
    'image',
    'fact',
    'article',
    'promo',
    'ad',
    'blog',
    'post',
  );
}
