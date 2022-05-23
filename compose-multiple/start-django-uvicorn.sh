#!/usr/bin/env bash

wait-for-it exam-db:5432 -s -t 180 \
&& ./manage.py migrate --noinput \
&& uvicorn asgi:application --host 0.0.0.0 --port 8000
