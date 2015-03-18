# Plato Tipico_d8
Drupal 8 distro with a typical setup in websites built with Composer

## Features
- Migrate set of files to migrate Drupal 7 to Drupal 8 (non oficial and created by <a href="http://anexusit.com" target=""_blank">Anexus IT </a>


## Install
- Clone project : $ git clone git@github.com:enzolutions/plato_tipico_d8.git plato_tipico
- Install: composer install
- Setup Virtual Host point to folder plato_tipico/web
- Install Drupal 8

## Importort Migration from Drupal 7
- Install <a href="drupalconsole.com" target="_blank">Drupal Console</a>
- Enable migrate module: $ console module:enable migrate
- Enable migrate_drupal module: $ console module:enable migrate_drupal
- Execute migration: $ console migrate:execute all  
