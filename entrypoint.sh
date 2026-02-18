#!/bin/sh
sed -i "s|{{title}}|$TITLE|g" /usr/share/nginx/html/config.js
exec nginx -g "daemon off;"
