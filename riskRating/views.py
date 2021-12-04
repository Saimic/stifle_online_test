from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpRequest
# Create your views here.
from identification.models import  Individual

def riskrating(request):
     individualRisk = Individual.objects.all()
     return render(request,"riskRating/risk_rating.html",{'individualRisk': individualRisk})
    # return render(request,"riskRating/risk_rating.html")


def eddModule(request):

     return render(request,"riskRating/edd.html")