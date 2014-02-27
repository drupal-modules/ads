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

/**
 * Implements template_preprocess_panels_pane().
 */
function ads_theme_preprocess_panels_pane(&$vars) {
  if ($vars['pane']->type === 'ads_include_page') {
    $vars['theme_hook_suggestions'][] = 'panels_pane__' . $vars['pane']->configuration['page_name'];
  }
}

/**
 * Implements template_panels_default_style_render_region().
 */
function ads_theme_panels_default_style_render_region($vars) {
  return implode('', $vars['panes']);
}
