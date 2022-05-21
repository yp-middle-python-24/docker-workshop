FROM python:3.10

# Disables the buffer for instant output of messages to stdout from processes.
ENV PYTHONUNBUFFERED=1

# Install system requirements
RUN apt-get update && \
    apt-get install -y libpq5 wait-for-it && \
    apt-get clean

## Install poetry
RUN pip install --no-cache-dir poetry==1.1.13

COPY exam /app

WORKDIR /app

## Install app requires
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi

RUN ./manage.py collectstatic --noinput

CMD wait-for-it exam-db:5432 -s -t 180 && ./manage.py runserver 0.0.0.0:8000
