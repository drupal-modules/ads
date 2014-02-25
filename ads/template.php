<?php

/**
 * @file
 * ADS distribution theme.
 */

function ads_theme_preprocess_page(&$vars) {
  $output = '';
  foreach (drupal_get_messages(NULL, TRUE) as $type => $messages) {
    $output .= "<div class=\"messages $type\">\n";
    if (count($messages) > 1) {
      $output .= " <ul>\n";
      foreach ($messages as $message) {
        $output .= '  <li>' . $message . "</li>\n";
      }
      $output .= " </ul>\n";
    }
    else {
      $output .= $messages[0];
    }
    $output .= "</div>\n";
  }

  $vars['messages'] = $output;
}
