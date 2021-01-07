#!/bin/sh
mysql -u root mysql < sqlerror.txt
mysql -u root -e "create database user;"
mysql -u root user < user.sql
