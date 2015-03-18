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

# Apply migration patches
cd  `PWD`/patches/
curl -o migration_files_for-2382703-6.patch https://www.drupal.org/files/issues/migration_files_for-2382703-6.patch  >/dev/null 2>&1
curl -o action_settings-2409411-1.patch https://www.drupal.org/files/issues/action_settings-2409411-1.patch  >/dev/null 2>&1
curl -o aggregator_settings-2409415-1.patch  https://www.drupal.org/files/issues/aggregator_settings-2409415-1.patch  >/dev/null 2>&1
curl -o book_settings-2409435-1.patch https://www.drupal.org/files/issues/book_settings-2409435-1.patch  >/dev/null 2>&1
curl -o dblog_settings-2409439-1.patch https://www.drupal.org/files/issues/dblog_settings-2409439-1.patch  >/dev/null 2>&1
curl -o file_settings-2409443-1.patch https://www.drupal.org/files/issues/file_settings-2409443-1.patch  >/dev/null 2>&1
curl -o locale_settings-2353761-1.patch https://www.drupal.org/files/issues/locale_settings-2353761-1.patch  >/dev/null 2>&1
curl -o menu_settings-2353763-1.patch https://www.drupal.org/files/issues/menu_settings-2353763-1.patch  >/dev/null 2>&1
curl -o node_settings-2353767-1.patch  https://www.drupal.org/files/issues/node_settings-2353767-1.patch  >/dev/null 2>&1
curl -o search_settings-2409447-1.patch https://www.drupal.org/files/issues/search_settings-2409447-1.patch  >/dev/null 2>&1
curl -o simpletest_settings-2409437-1.patch https://www.drupal.org/files/issues/simpletest_settings-2409437-1.patch  >/dev/null 2>&1
curl -o statistics_settings-2409453-1.patch https://www.drupal.org/files/issues/statistics_settings-2409453-1.patch  >/dev/null 2>&1
curl -o syslog_settings-2353769-1.patch https://www.drupal.org/files/issues/syslog_settings-2353769-1.patch  >/dev/null 2>&1
curl -o cron_settings-2353733-1.patch https://www.drupal.org/files/issues/cron_settings-2353733-1.patch  >/dev/null 2>&1
curl -o system_file_settings-2353739-1.patch  https://www.drupal.org/files/issues/system_file_settings-2353739-1.patch  >/dev/null 2>&1
curl -o variable_to_config-2445777-1.patch https://www.drupal.org/files/issues/variable_to_config-2445777-1.patch  >/dev/null 2>&1
curl -o system_image_settings-2409457-1.patch https://www.drupal.org/files/issues/system_image_settings-2409457-1.patch  >/dev/null 2>&1
curl -o system_image_gd-2409461-1.patch  https://www.drupal.org/files/issues/system_image_gd-2409461-1.patch  >/dev/null 2>&1
curl -o system_logging_settings-2409451-1.patch https://www.drupal.org/files/issues/system_logging_settings-2409451-1.patch  >/dev/null 2>&1
curl -o system_maintenance-2353749-2.patch https://www.drupal.org/files/issues/system_maintenance-2353749-2.patch  >/dev/null 2>&1
curl -o system_performance_settings-2353757-1.patch https://www.drupal.org/files/issues/system_performance_settings-2353757-1.patch  >/dev/null 2>&1
curl -o system_rss_settings-2353759-1_0.patch https://www.drupal.org/files/issues/system_rss_settings-2353759-1_0.patch  >/dev/null 2>&1
curl -o system_site_settings-2409449-1.patch https://www.drupal.org/files/issues/system_site_settings-2409449-1.patch  >/dev/null 2>&1
curl -o taxonomy_settings-2353775-1.patch https://www.drupal.org/files/issues/taxonomy_settings-2353775-1.patch  >/dev/null 2>&1
curl -o text_settings-2409441-1.patch https://www.drupal.org/files/issues/text_settings-2409441-1.patch  >/dev/null 2>&1
curl -o update_settigns-2353813-1.patch https://www.drupal.org/files/issues/update_settigns-2353813-1.patch  >/dev/null 2>&1
curl -o variable_to_config-2445789-1.patch https://www.drupal.org/files/issues/variable_to_config-2445789-1.patch  >/dev/null 2>&1
curl -o user_settings-2353817-1.patch https://www.drupal.org/files/issues/user_settings-2353817-1.patch  >/dev/null 2>&1
curl -o variable_to_config-2353703-1.patch https://www.drupal.org/files/issues/variable_to_config-2353703-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2445811-1.patch https://www.drupal.org/files/issues/migration_files_for-2445811-1.patch  >/dev/null 2>&1
curl -o variable_to_config-2353697-1_0.patch https://www.drupal.org/files/issues/variable_to_config-2353697-1_0.patch  >/dev/null 2>&1
curl -o enable_ui_to_select-2382139-12.patch https://www.drupal.org/files/issues/enable_ui_to_select-2382139-12.patch  >/dev/null 2>&1
curl -o migration_files_for-2382703-6.patch https://www.drupal.org/files/issues/migration_files_for-2382703-6.patch  >/dev/null 2>&1
curl -o migration_files_for-2384567-4.patch https://www.drupal.org/files/issues/migration_files_for-2384567-4.patch  >/dev/null 2>&1
curl -o migration_files_for-2402201-1.patch https://www.drupal.org/files/issues/migration_files_for-2402201-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2410875-1.patch https://www.drupal.org/files/issues/migration_files_for-2410875-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2411657-1.patch https://www.drupal.org/files/issues/migration_files_for-2411657-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2408165-4.patch https://www.drupal.org/files/issues/migration_files_for-2408165-4.patch  >/dev/null 2>&1
curl -o migration_files_for-2415325-1.patch https://www.drupal.org/files/issues/migration_files_for-2415325-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2415333-2.patch https://www.drupal.org/files/issues/migration_files_for-2415333-2.patch  >/dev/null 2>&1
curl -o migration_files_for-2415335-1.patch https://www.drupal.org/files/issues/migration_files_for-2415335-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2415341-1.patch https://www.drupal.org/files/issues/migration_files_for-2415341-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2414599-1.patch https://www.drupal.org/files/issues/migration_files_for-2414599-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2414603-1.patch https://www.drupal.org/files/issues/migration_files_for-2414603-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2414609-2.patch https://www.drupal.org/files/issues/migration_files_for-2414609-2.patch  >/dev/null 2>&1
curl -o migration_files_for-2414621-1_0.patch https://www.drupal.org/files/issues/migration_files_for-2414621-1_0.patch  >/dev/null 2>&1
curl -o migration_files_for-2414627-1.patch https://www.drupal.org/files/issues/migration_files_for-2414627-1.patch  >/dev/null 2>&1
curl -o migration_files_for-2414651-1.patch https://www.drupal.org/files/issues/migration_files_for-2414651-1.patch  >/dev/null 2>&1

cd  ../web/
for i in ../patches/*.patch;
do
  patch -p1 < $i;
  rm $i;
done

# Use the correct autoloader in the core front controllers.
# See https://www.drupal.org/node/2406681
#for FILE in "authorize.php" "install.php" "rebuild.php"
#do
#  sed -i "s/require_once\ __DIR__\ \.\ '\/vendor\/autoload\.php'\;/require_once\ __DIR__\ \.\ '\/..\/..\/vendor\/autoload\.php'\;/" `PWD`/web/core/$FILE
#done
