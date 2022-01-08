from django.shortcuts import render
from django.http import JsonResponse
import json

# Create your views here.

def home(request):
    data = {
        "id": 1,
        "name": "prabal",
    }

    return JsonResponse(data)


