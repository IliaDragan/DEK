<?php
/**
 * @file
 * cluster.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function cluster_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function cluster_node_info() {
  $items = array(
    'cluster' => array(
      'name' => t('Cluster'),
      'base' => 'node_content',
      'description' => t('Used on map view for Europe, Region and City and a stand alone fact sheet page about the cluster.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
