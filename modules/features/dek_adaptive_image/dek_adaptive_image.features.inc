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
      7 => array(
        'label' => 'Adaptive',
        'help' => 'Adaptive image scale according to client resolution.',
        'effect callback' => 'image_scale_effect',
        'dimensions callback' => 'image_scale_dimensions',
        'form callback' => 'adaptive_image_scale_form',
        'summary theme' => 'adaptive_image_scale_summary',
        'module' => 'adaptive_image',
        'name' => 'adaptive_image',
        'data' => array(
          'resolutions' => '1382, 992, 768, 480',
          'mobile_first' => 1,
          'height' => '',
          'width' => '1382',
          'upscale' => '',
        ),
        'weight' => '1',
      ),
    ),
  );

  return $styles;
}
