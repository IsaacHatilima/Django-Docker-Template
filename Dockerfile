FROM python:3.9-alpine3.13
LABEL maintainer="isaachatilima@gmail.com"

ENV PYTHONUNBEFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./app /app

WORKDIR /app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install /requirements.txt && \
    adduser --disabled-password --no-create-home app