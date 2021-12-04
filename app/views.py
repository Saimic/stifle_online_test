"""
Definition of views.
"""

from datetime import datetime
from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpRequest

def index(request):
       return render(request,"base/base.html")

def login(request):
       return render(request,"base/login.html")


#def details(request):
#    #return render(request,"identification/individual_ip.html")
#    return render(request,"identification/edd.html")