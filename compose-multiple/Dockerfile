FROM python:3.10

# Disables the buffer for instant output of messages to stdout from processes.
ENV PYTHONUNBUFFERED=1

# Install system requirements
RUN apt-get update && \
    apt-get install -y libpq5 wait-for-it && \
    apt-get clean

## Install poetry
RUN pip install --no-cache-dir poetry==1.1.13

COPY . /app/src

WORKDIR /app/src/exam

## Install app requires
RUN poetry config virtualenvs.create false && \
    poetry install --no-dev --no-interaction --no-ansi

