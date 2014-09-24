<?php

/**
 * @file
 * Taxonomy vocabularies related installation tasks.
 */

/**
 * Import batch operation for vocabularies.
 */
function ads_import_vocabularies(&$context) {
  if (!isset($context['sandbox']['progress'])) {
    $vocs = taxonomy_vocabulary_load_multiple(FALSE);
    $context['sandbox']['progress'] = 0;
    $context['sandbox']['current_node'] = 0;
    $context['sandbox']['max'] = count($vocs);
    $context['sandbox']['vocs'] = $vocs;
    // Do not force menu rebuilding. Otherwise pathauto will try to rebuild
    // on each node_insert invocation.
    variable_set('menu_rebuild_needed', FALSE);
  }

  $voc = array_pop($context['sandbox']['vocs']);
  ads_import_vocabulary($voc, $context);
  $context['sandbox']['progress']++;

  if ($context['sandbox']['progress'] != $context['sandbox']['max']) {
    $context['finished'] = $context['sandbox']['progress'] / $context['sandbox']['max'];
  }
}

/**
 * Imports terms into a vocabulary using taxonomy csv.
 */
function ads_import_vocabulary($voc, &$context) {
  // Note: drupal_get_path('profile', 'ads') didn't work here.
  $import_dir = dirname(__FILE__) . '/taxonomy_import/';

  // Use Taxonomy CSV to import terms from a file.
  $module_dir = dirname(__FILE__) . '/modules/taxonomy_csv';
  require_once "$module_dir/import/taxonomy_csv.import.api.inc";

  // Import terms for each voc, where a .csv file exits.
  $filename = $import_dir . $voc->machine_name . '.csv';
  if (!file_exists($filename)) {
    return;
  }

  // Set options for import.
  $options['import_format'] = TAXONOMY_CSV_FORMAT_TREE;
  $options['enclosure'] = '"';
  $options['vocabulary_target'] = 'existing';
  $options['vocabulary_id'] = $voc->vid;
  $options['check_hierarchy'] = FALSE;
  $options['set_hierarchy'] = 1;
  $options['source_choice'] = 'text';
  $options['url'] = $filename;
  taxonomy_csv_import($options);

  $context['results'][] = t('Imported terms for vocabulary @voc_name', array('@voc_name' => $voc->name));
}

/**
 * Prints message after batch is finished.
 */
function ads_import_vocabularies_finished($success, $results, $operations) {
  $message = "";
  if ($success) {
    $message .= theme('item_list', array('items' => $results));
  }
  $message .= t("Import finished");
  drupal_set_message(check_plain($message));
}
