
from django.urls import include,path
from . import views


urlpatterns =[
   
    path('individual_screeing',views.individualScreeing,name='individualScreeing'),
    path('organization_screeing', views.organizationScreeing,name= 'organizationScreeing'),
    path('port_screeing',views.portScreeing, name='portScreeing'),
    path('vessel_screeing',views.vesselScreeing,name='vesselScreeing'),
    path('bulk_screeing',views.bulkScreeing,name='bulkScreeing'),
    
    
    ]