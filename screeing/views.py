from django.http.response import HttpResponse
from django.shortcuts import render

# Create your views here.

def individualScreeing(request):
    return render(request,"screeing/screeing_individual.html")

def organizationScreeing(request):
    return render(request,"screeing/screeing_organization.html")

def portScreeing(request):
    return render(request,"screeing/screeing_port.html")

def vesselScreeing(request):
    return render(request,"screeing/screeing_vessel.html")

def bulkScreeing(request):
    return render(request,"screeing/screeing_bulk.html")