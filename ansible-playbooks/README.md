# Roles

## Apache

Install and configure apache

## PHP

Install PHP dependencies

## Mysql

Install Mysql and create users

## deployredexweb

Deploy website

## Settings

`http_host`: your domain name

`app_user`: a remote user on the Ansible host that will own the application files. 

`branch`: git branch to deploy default is main

`mysql_root_password`: mysql root password

`mysql_backup_user`: mysql backup username

`mysql_backup_dir`: mysql backup dir

`mysql_backup_password`: mysql backup password

`mysql_backup_database`: mysql backup database

`whitelist_ips`: Define list ips can access website