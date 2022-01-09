until cd /app/backend/django_rest
do
    echo "waiting for server volume"
done

until ./manage.py migrate
do 
    echo "waiting for db to be ready..."
    sleep 2
done 

./manage.py collectstatic --noinput 
gunicorn django_rest.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4
