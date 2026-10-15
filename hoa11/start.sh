#!/bin/bash

# start the mariadb service in the background
service mariadb start

# start nginx in the foreground as the primary process
exec nginx -g 'daemon off;'
