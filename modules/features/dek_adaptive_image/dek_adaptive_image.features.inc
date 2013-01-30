<?php
/**
 * @file
 * dek_adaptive_image.features.inc
 */

/**
 * Implements hook_image_default_styles().
 */
function dek_adaptive_image_image_default_styles() {
  $styles = array();

  // Exported image style: adaptive.
  $styles['adaptive'] = array(
    'name' => 'adaptive',
    'effects' => array(
      7 => NULL,
    ),
  );

  return $styles;
}
