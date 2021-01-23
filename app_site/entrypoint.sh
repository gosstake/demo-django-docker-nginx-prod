#!/bin/sh

set -e

python manage.py collectstatic --noinput

uwsgi --http :8080 --master --enable-threads --module app.wsgi