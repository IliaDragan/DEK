<?php
/**
 * @file
 * Install profile for the DEK project.
 */

/* --- HOOKS ---------------------------------------------------------------- */

/**
 * Implements hook_form_FORM_ID_alter().
 */
function dek_form_install_configure_form_alter(&$form, $form_state) {
  // basic site information
  $form['site_information']['site_name']['#default_value'] = 'dek';
  $form['site_information']['site_mail']['#default_value'] = 'noreply@dek.dk';

  // set the admin username and password to make reinstalls less painful
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'noreply@dek.dk';

  $form['admin_account']['account']['pass']['#type'] = 'hidden';
  $form['admin_account']['account']['pass']['#value'] = 'ib';

  $form['admin_account']['account']['pass_help']['#markup'] = '<p><strong>'. t('The admin password has been set automatically.') .'</strong></p>';

  // set default timezone
  $form['server_settings']['site_default_country']['#default_value'] = 'DK';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Copenhagen';

  // disable automatic client timezone detection
  unset($form['server_settings']['date_default_timezone']['#attributes']);

  // don't send update e-mails
  $form['update_notifications']['update_status_module']['#default_value'] = array(1);
}

/**
 * Implements hook_install_tasks().
 */
function dek_install_tasks() {
  return array(
    'dek_install_features' => array(
      'display_name' => st('Install dek features'),
      'type' => 'batch',
    ),
  );
}

/* --- HOOKS ---------------------------------------------------------------- */

/**
 * Install features.
 */
function dek_install_features() {
  $files = system_rebuild_module_data();

  $features = array();
  if (isset($files['dek']->info['dek_features']) && is_array($files['dek']->info['dek_features'])) {
    $features = $files['dek']->info['dek_features'];
  }

  $modules = array();
  foreach ($features as $feature) {
    $modules[] = $feature;
  }

  if (!empty($modules)) {
    foreach ($modules as $module) {
      if ($files[$module]->requires) {
        $modules = array_merge($modules, array_keys($files[$module]->requires));
      }
    }
    $modules = array_unique($modules);

    $required = array();
    $non_required = array();
    foreach ($modules as $module) {
      if (!empty($files[$module]->info['required'])) {
        $required[$module] = $files[$module]->sort;
      }
      else {
        $non_required[$module] = $files[$module]->sort;
      }
    }
    arsort($required);
    arsort($non_required);

    $operations = array();
    foreach ($required + $non_required as $module => $weight) {
      $operations[] = array('_install_module_batch', array($module, $files[$module]->info['name']));
    }
    $batch = array(
      'operations' => $operations,
      'title' => st('Installing dek features'),
      'error_message' => st('The installation has encountered an error.'),
      'finished' => '_install_profile_modules_finished',
    );
    return $batch;
  }
}
