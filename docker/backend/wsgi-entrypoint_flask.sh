until cd /app/backend/flask_rest
do
    echo "waiting for server volume"
done

do 
    echo "waiting for db to be ready..."
    sleep 2
done 

python run.py
