#!/usr/bin/env bash

sudo echo "172.17.0.1 db" | sudo tee -a /etc/hosts
sudo apt update
sudo apt -y install vim mysql-client

mysql -u root -proot -h db -e 'SET FOREIGN_KEY_CHECKS = 0; DROP DATABASE IF EXISTS test; DROP SCHEMA IF EXISTS second_hand_books; DROP SCHEMA IF EXISTS contest; DROP DATABASE IF EXISTS reverse_bookstore; DROP SCHEMA IF EXISTS bookstore_schemas; SET FOREIGN_KEY_CHECKS = 1;'
mysql -u root -proot -h db -e 'CREATE DATABASE test; CREATE SCHEMA bookstore_schemas; CREATE SCHEMA contest; CREATE SCHEMA second_hand_books; CREATE DATABASE reverse_bookstore;'

echo "test/reset_tests.sh"
