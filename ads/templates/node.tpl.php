<node id="node-<?php print $node->nid; ?>" class="<?php print $classes; ?> clearfix"<?php print $attributes; ?>>


  <node-header>
    <?php print render($title_prefix); ?>
    <?php if (!$page && $title): ?>
      <h2<?php print $title_attributes; ?>><a href="<?php print $node_url; ?>"><?php print $title; ?></a></h2>
    <?php endif; ?>
    <?php print render($title_suffix); ?>

    <?php if ($display_submitted): ?>
      <span class="submitted">
        <?php print $user_picture; ?>
        <?php print $submitted; ?>
      </span>
    <?php endif; ?>
  </node-header>

  <?php
    // Hide comments, tags, and links now so that we can render them later.
    hide($content['comments']);
    hide($content['links']);
    hide($content['field_tags']);
    
  ?>

  <node-content>
    <?php print render($content); ?>
  </node-content>

  <?php if (!empty($content['field_tags']) || !empty($content['links'])): ?>
    <node-footer>
      <?php print render($content['field_tags']); ?>
      <?php print render($content['links']); ?>
    </node-footer>
  <?php endif; ?>

  <?php print render($content['comments']); ?>

</node>