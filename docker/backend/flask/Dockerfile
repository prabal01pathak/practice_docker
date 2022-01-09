FROM python:3.8.3-alpine  AS base
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY ./backend/requirements.txt /app/backend/
RUN pip install gunicorn
RUN pip3 install -r backend/requirements.txt 

ADD ./docker /app/docker/
ADD ./backend /app/backend 

