from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpRequest
# Create your views here.


def monitoring(request):
      return render(request,"monitoring/monitoringModule.html")

def str(request):
    return render(request,"monitoring/str.html")