
from django.urls import include,path
from . import views


urlpatterns =[
    
   
    path('riskrating',views.riskrating,name='riskrating'),
    path('edd',views.eddModule,name='eddModule'),
    
    
    ]