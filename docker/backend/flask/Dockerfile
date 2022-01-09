FROM python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY ./backend/requirements.txt /app/backend/
RUN pip install gunicorn
RUN pip3 install -r backend/requirements.txt 

ADD ./docker /app/docker/
ADD ./backend /app/backend 

