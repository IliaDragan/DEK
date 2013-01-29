; makefile for DEK

; define core version and drush make compatibility

core = 7.x
api = 2

hostnames[] = dek.dk


; development modules

projects[devel][subdir] = contrib
projects[devel][download][type] = git
projects[devel][download][url] = http://git.drupal.org/project/devel.git
projects[devel][download][tag] = 7.x-1.3

projects[diff][subdir] = contrib
projects[diff][download][type] = git
projects[diff][download][url] = http://git.drupal.org/project/diff.git
projects[diff][download][tag] = 7.x-3.2

projects[module_filter][subdir] = contrib
projects[module_filter][download][type] = git
projects[module_filter][download][url] = http://git.drupal.org/project/module_filter.git
projects[module_filter][download][tag] = 7.x-1.7


; modules

projects[advanced_help][subdir] = contrib
projects[advanced_help][download][type] = git
projects[advanced_help][download][url] = http://git.drupal.org/project/advanced_help.git
projects[advanced_help][download][tag] = 7.x-1.0

projects[ctools][subdir] = contrib
projects[ctools][download][type] = git
projects[ctools][download][url] = http://git.drupal.org/project/ctools.git
projects[ctools][download][tag] = 7.x-1.2

projects[entity][subdir] = contrib
projects[entity][download][type] = git
projects[entity][download][url] = http://git.drupal.org/project/entity.git
projects[entity][download][tag] = 7.x-1.0

projects[features][subdir] = contrib
projects[features][download][type] = git
projects[features][download][url] = http://git.drupal.org/project/features.git
projects[features][download][tag] = 7.x-1.0

projects[features_extra][subdir] = contrib
projects[features_extra][download][type] = git
projects[features_extra][download][url] = http://git.drupal.org/project/features_extra.git
projects[features_extra][download][tag] = 7.x-1.0-alpha1

projects[file_entity][subdir] = contrib
projects[file_entity][download][type] = git
projects[file_entity][download][url] = http://git.drupal.org/project/file_entity.git
; This is just latest revision as of 2013-01-22.
projects[file_entity][download][revision] = 7b6830cc2a36ec7942e7e3931487ee605983f001

projects[i18n][subdir] = contrib
projects[i18n][download][type] = git
projects[i18n][download][url] = http://git.drupal.org/project/i18n.git
projects[i18n][download][tag] = 7.x-1.8

projects[pathauto][subdir] = contrib
projects[pathauto][download][type] = git
projects[pathauto][download][url] = http://git.drupal.org/project/pathauto.git
projects[pathauto][download][tag] = 7.x-1.2

projects[references][subdir] = contrib
projects[references][download][type] = git
projects[references][download][url] = http://git.drupal.org/project/references.git
projects[references][download][tag] = 7.x-2.0

projects[references_dialog][subdir] = contrib
projects[references_dialog][download][type] = git
projects[references_dialog][download][url] = http://git.drupal.org/project/references_dialog.git
projects[references_dialog][download][tag] = 7.x-1.0-alpha4

projects[special_menu_items][subdir] = contrib
projects[special_menu_items][download][type] = git
projects[special_menu_items][download][url] = http://git.drupal.org/project/special_menu_items.git
projects[special_menu_items][download][tag] = 7.x-2.0

projects[strongarm][subdir] = contrib
projects[strongarm][download][type] = git
projects[strongarm][download][url] = http://git.drupal.org/project/strongarm.git
projects[strongarm][download][tag] = 7.x-2.0

projects[token][subdir] = contrib
projects[token][download][type] = git
projects[token][download][url] = http://git.drupal.org/project/token.git
projects[token][download][tag] = 7.x-1.4

projects[transliteration][subdir] = contrib
projects[transliteration][download][type] = git
projects[transliteration][download][url] = http://git.drupal.org/project/transliteration.git
projects[transliteration][download][tag] = 7.x-3.1

projects[variable][subdir] = contrib
projects[variable][download][type] = git
projects[variable][download][url] = http://git.drupal.org/project/variable.git
projects[variable][download][tag] = 7.x-2.2

projects[views][subdir] = contrib
projects[views][download][type] = git
projects[views][download][url] = http://git.drupal.org/project/views.git
projects[views][download][tag] = 7.x-3.5

projects[wysiwyg][subdir] = contrib
projects[wysiwyg][download][type] = git
projects[wysiwyg][download][url] = http://git.drupal.org/project/wysiwyg.git
projects[wysiwyg][download][tag] = 7.x-2.2

projects[adaptive_image][subdir] = contrib
projects[adaptive_image][download][type] = git
projects[adaptive_image][download][url] = http://git.drupal.org/project/adaptive_image.git
projects[adaptive_image][download][tag] = 7.x-1.4

; themes


; libraries

libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6/ckeditor_3.6.6.tar.gz"
