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

  // Exported image style: front.
  $styles['front'] = array(
    'name' => 'front',
    'effects' => array(
      3 => array(
        'label' => 'Scale and crop',
        'help' => 'Scale and crop will maintain the aspect-ratio of the original image, then crop the larger dimension. This is most useful for creating perfectly square thumbnails without stretching the image.',
        'effect callback' => 'image_scale_and_crop_effect',
        'dimensions callback' => 'image_resize_dimensions',
        'form callback' => 'image_resize_form',
        'summary theme' => 'image_resize_summary',
        'module' => 'image',
        'name' => 'image_scale_and_crop',
        'data' => array(
          'width' => '270',
          'height' => '140',
        ),
        'weight' => '1',
      ),
    ),
  );

  return $styles;
}
