#!/bin/sh

# Prepare the settings file for installation
if [ ! -f web/sites/default/settings.php ]
  then
    cp web/sites/default/default.settings.php web/sites/default/settings.php
    chmod 777 web/sites/default/settings.php
fi

# Prepare the services file for installation
if [ ! -f web/sites/default/services.yml ]
  then
    cp web/sites/default/default.services.yml web/sites/default/services.yml
    chmod 777 web/sites/default/services.yml
fi

# Prepare the files directory for installation
if [ ! -d web/sites/default/files ]
  then
    mkdir -m777 web/sites/default/files
fi

# Use the correct autoloader in the core front controllers.
# See https://www.drupal.org/node/2406681
for FILE in "authorize.php" "install.php" "rebuild.php"
do
  sed -i "s/require_once\ __DIR__\ \.\ '\/vendor\/autoload\.php'\;/require_once\ __DIR__\ \.\ '\/..\/..\/vendor\/autoload\.php'\;/" $PWD/web/core/$FILE
done
