FROM python:3.8.3-alpine  AS base
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY ./backend/requirements.txt /app/backend/
RUN pip install gunicorn
RUN pip3 install -r backend/requirements.txt 

ADD ./docker /app/docker/
ADD ./backend /app/backend 





FROM base AS django-dev
COPY ./django_rest/ ./
CMD ["python","manage.py","runserver","0.0.0.0:5000"]



#######################
#    flask_rest      #
#######################

FROM base as flask-dev
COPY ./flask_rest/ ./
CMD ["python","run.py"]




