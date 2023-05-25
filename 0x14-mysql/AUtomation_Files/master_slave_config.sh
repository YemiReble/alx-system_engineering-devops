#!/usr/bin/env bash
# Configuring MySql Server [Master & Slave]
# This is to be runned on the Master Server [web-01]

# Configuring Firewalls To allow Traffic on port 3306
sudo ufw allow from 52.87.220.62 to any port 3306

content='bind-address = 52.87.220.62'
sudo sed -i "s/bind-address/g /$content/" /etc/mysql/mysql.conf.d/mysqld.cnf


