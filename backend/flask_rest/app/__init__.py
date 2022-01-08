from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_restful import Resource , Api
import os
from app import routes
  
app = Flask(__name__)

api = Api(app)

file_path = "C:/users/hp/flask_apps/practice_web_api/backend/django_rest/db.sqlite3"
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///'+file_path
db = SQLAlchemy(app)   


