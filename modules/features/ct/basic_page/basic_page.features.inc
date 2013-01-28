<?php
/**
 * @file
 * basic_page.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function basic_page_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function basic_page_node_info() {
  $items = array(
    'basic_page' => array(
      'name' => t('Basic page'),
      'base' => 'node_content',
      'description' => t('Used for “Introduction” and “Links and resources”.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
