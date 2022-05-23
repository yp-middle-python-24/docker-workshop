#!/usr/bin/env bash

wait-for-it exam-db:5432 -s -t 180 \
&& ./manage.py makemigrations --dry-run --check \
&& ./manage.py check --fail-level=WARNING \
&& pytest $@
