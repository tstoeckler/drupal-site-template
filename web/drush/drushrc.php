<?php

// Make Drush use the project's autoloader instead of Drupal core's hardcoded
// one.
$autoloader = require __DIR__ . '/../../vendor/autoload.php';
drush_drupal_load_autoloader(NULL, $autoloader);
