<?php
/**
 * @file
 * dek_content_type.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function dek_content_type_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function dek_content_type_node_info() {
  $items = array(
    'basic_page' => array(
      'name' => t('Basic page'),
      'base' => 'node_content',
      'description' => t('Used for “Introduction” and “Links and resources”.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'building_plot' => array(
      'name' => t('Building plot'),
      'base' => 'node_content',
      'description' => t('Place the marker on his/her desired position on the map.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'cluster' => array(
      'name' => t('Cluster'),
      'base' => 'node_content',
      'description' => t('Used on map view for Europe, Region and City and a stand alone fact sheet page about the cluster.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
    'development_area' => array(
      'name' => t('Development area'),
      'base' => 'node_content',
      'description' => t('Used to display a development area.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
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
