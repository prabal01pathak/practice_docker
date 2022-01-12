from django.urls import path
from .views import home

app_name = "rest"

urlpatterns = [
    path("",home,name="rest-home"),
]
