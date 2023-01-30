#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic

gunicorn exchange.wsgi:application --bind 0.0.0.0:6068

