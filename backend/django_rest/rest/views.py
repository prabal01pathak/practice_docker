from django.shortcuts import render
from django.http import JsonResponse
import json

# Create your views here.

def home(request):
    data = {
        "id": 1,
        "name": "prabal",
    }
    if request.method=="POST":
        data['id']=2
        return render(request,'index.html',data)

    return render(request,'index.html',data)


