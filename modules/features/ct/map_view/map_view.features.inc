<?php
/**
 * @file
 * map_view.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function map_view_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function map_view_node_info() {
  $items = array(
    'map_view' => array(
      'name' => t('Map view'),
      'base' => 'node_content',
      'description' => t('Content type based around a map'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
