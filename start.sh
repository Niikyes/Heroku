#!/bin/sh

# Sustituir variables en la plantilla y lanzar nginx
envsubst '$PORT' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

# Ejecutar nginx en foreground (como requiere Heroku)
nginx -g 'daemon off;'