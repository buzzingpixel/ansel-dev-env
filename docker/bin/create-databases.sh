#!/usr/bin/env bash

# ExpressionEngine
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"CREATE DATABASE anselee\"";
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"CREATE USER 'anselee'@'%' IDENTIFIED BY 'secret'\"";
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"GRANT ALL on anselee.* to 'anselee'@'%'\"";

# Craft
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"CREATE DATABASE anselcraft\"";
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"CREATE USER 'anselcraft'@'%' IDENTIFIED BY 'secret'\"";
docker exec ansel-dev-env-db bash -c "mysql -uroot -proot -e \"GRANT ALL on anselcraft.* to 'anselcraft'@'%'\"";
