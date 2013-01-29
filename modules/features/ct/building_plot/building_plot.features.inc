<?php
/**
 * @file
 * building_plot.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function building_plot_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function building_plot_node_info() {
  $items = array(
    'building_plot' => array(
      'name' => t('Building plot'),
      'base' => 'node_content',
      'description' => t('Place the marker on his/her desired position on the map.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
