#!/usr/bin/env bash

# Starts Django in development mode

wait-for-it exam-db:5432 -s -t 180 \
&& ./manage.py migrate --noinput \
&& ./manage.py runserver 0.0.0.0:8000
