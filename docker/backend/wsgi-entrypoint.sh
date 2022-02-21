cd /app/backend/django_rest


python3 manage.py collectstatic --noinput 
gunicorn django_rest.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4
