; Drupal core make file.
; Include the definition for how to build Drupal core directly, including Drupal core patches.

api = 2

; Not specifying a drupal core version will use the latest stable release.
core = 7.x

; CORE PATCHES

; Example:
; node_access integrity constraint violation on module_invoke_all('node_' . $op, $node); http://drupal.org/node/1146244
; http://drupal.org/node/1146244#comment-6644078
; projects[drupal][patch][] = http://drupal.org/files/1146244-82-node-save-on-insert.patch

