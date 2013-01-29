<?php
/**
 * @file
 * development_area.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function development_area_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function development_area_node_info() {
  $items = array(
    'development_area' => array(
      'name' => t('Development area'),
      'base' => 'node_content',
      'description' => t('Used to display a development area.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
