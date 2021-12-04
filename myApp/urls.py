"""
Definition of urls for myApp.
"""

from datetime import datetime

from django.contrib import admin
from django.contrib.auth.views import LoginView, LogoutView
from app import forms, views
from django.urls import include, path

urlpatterns = [
     path('admin/',admin.site.urls),
     path('', include('app.urls')),
    
     path('discounting/', include('discounting.urls')),
     path('identification/', include('identification.urls')),
     path('monitoring/', include('monitoring.urls')),
     path('riskRating/', include('riskRating.urls')),
     path('screeing/', include('screeing.urls')),
     path('reporting/', include('reporting.urls')),
    
     

]
