#
# Cookbook Name:: supervisor
# Attributes:: default
#
# Copyright 2012-2013, Escape Studios
#

default['supervisor']['programs'] = {
  "levigo" : {
    "name" : "laravel-worker",
    "command": "/usr/bin/php /mnt/srv/www/levigo/current/artisan queue:listen database",
    "stdout_logfile": "/mnt/srv/www/worker.log",
    "autostart": true,
    "autorestart": true,
    "user": "root",
    "numprocs": 1
  }
}
default['supervisor']['sockfile'] = "/var/run/supervisor.sock"
