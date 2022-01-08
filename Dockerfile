FROM python AS base
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt ./
RUN pip3 install -r requirements.txt 





FROM base AS django-dev
COPY ./django_rest/ ./
CMD ["python","manage.py","runserver","0.0.0.0:8000"]



#######################
#    flask_rest      #
#######################

FROM base as flask-dev
COPY ./flask_rest/ ./
CMD ["python","run.py"]




