<?php

/**
 * @file
 * ADS distribution theme.
 */

function ads_theme_preprocess_page(&$vars) {
  $output = '';
  foreach (drupal_get_messages(NULL, TRUE) as $type => $messages) {
    switch ($type) {
      case 'error':
        $icon = 'fa-exclamation';
        break;

      case 'warning':
        $icon = 'fa-thumbs-o-down';
        break;

      case 'status':
        $icon = 'fa-info';
        break;
    }

    $output .= "<div class=\"messages $type\">\n";
    $output .= " <ul>\n";
    foreach ($messages as $message) {
      $output .= '  <li><span class="icon"><i class="fa ' . $icon . '" ></i></span>' . $message . "</li>\n";
    }
    $output .= " </ul>\n";

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

/**
 * Returns HTML for an administrative block for display.
 *
 * @param $variables
 *   An associative array containing:
 *   - block: An array containing information about the block:
 *     - show: A Boolean whether to output the block. Defaults to FALSE.
 *     - title: The block's title.
 *     - content: (optional) Formatted content for the block.
 *     - description: (optional) Description of the block. Only output if
 *       'content' is not set.
 *
 * @ingroup themeable
 */
function ads_admin_block($variables) {

  if (($library = libraries_detect('masonry')) && !empty($library['installed'])) {
    libraries_load('masonry');
    drupal_add_js('
      jQuery(function() {jQuery(".masonry").masonry({
        itemSelector: ".masonry-item",
        columnWidth: 300,
        isAnimated: true,
      });});',
      'inline'
    );
  }


  $block = $variables['block'];
  $output = '';

  // Don't display the block if it has no content to display.
  if (empty($block['show'])) {
    return $output;
  }

  $output .= '<div class="admin-panel masonry-item">';
  if (!empty($block['title'])) {
    $output .= '<h3>' . $block['title'] . '</h3>';
  }
  if (!empty($block['content'])) {
    $output .= '<span class="body">' . $block['content'] . '</span>';
  }
  else {
    $output .= '<span class="description">' . $block['description'] . '</span>';
  }
  $output .= '</div>';

  return $output;
} 

/**
 * Returns HTML for the content of an administrative block.
 *
 * @param $variables
 *   An associative array containing:
 *   - content: An array containing information about the block. Each element
 *     of the array represents an administrative menu item, and must at least
 *     contain the keys 'title', 'href', and 'localized_options', which are
 *     passed to l(). A 'description' key may also be provided.
 *
 * @ingroup themeable
 */
function ads_admin_block_content($variables) {
  $content = $variables['content'];
  $output = '';

  if (!empty($content)) {
    $class = 'admin-list';
    if ($compact = system_admin_compact_mode()) {
      $class .= ' compact';
    }
    $output .= '<span class="' . $class . '">';
    foreach ($content as $item) {
      $output .= '<span class="title">' . l($item['title'], $item['href'], $item['localized_options']) . '';
      if (!$compact && isset($item['description'])) {
        $output .= '<span class="description">' . filter_xss_admin($item['description']) . '</span>';
      }
      $output .= '</span>';
    }
    $output .= '</span>';
  }
  return $output;
}

/**
 * Returns HTML for an administrative page.
 *
 * @param $variables
 *   An associative array containing:
 *   - blocks: An array of blocks to display. Each array should include a
 *     'title', a 'description', a formatted 'content' and a 'position' which
 *     will control which container it will be in. This is usually 'left' or
 *     'right'.
 *
 * @ingroup themeable
 */
function ads_admin_page($variables) {

  $blocks = $variables['blocks'];

  $stripe = 0;
  $container = array();

  $i = 0;

  $num_cols = 5;

  for ($i = 1; $i <= 5; ++$i) {
    $container[$i] = '';
  }

  foreach ($blocks as $block) {
    if ($block_output = theme('admin_block', array('block' => $block))) {
      //dsm ($block);
      $container[$i = $i % $num_cols + 1] .= '<div class="menu-' . str_replace('/', '_', $block['tab_root']) . '">' . $block_output . '</div>';
    }
  }

  $output = '<div class="admin clearfix">';
  $output .= theme('system_compact_link');

  $output .= '<div class="cols cols-' . $num_cols . '">';
  foreach ($container as $id => $data) {
    $output .= '<div class="col col-' . $id . '">';
      $output .= $data;
    $output .= '</div>';
  }
  $output .= '</div>';

  $output .= '</div>';
  return $output;
}