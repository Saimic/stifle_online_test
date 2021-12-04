
from django.urls import include,path
from . import views


urlpatterns =[
   
    #path('individual_identification',views.individualIdentification,name='individualIdentification'),
    #path('organization_identification',views.organizationIdentification,name= 'organization'),
    #path('edd_identification',views.eddIdentification,name='edd'),
    path('pep_identification',views.pepIdentification,name='pepIdentification'),
    #path('identification/',views.eddCreation,name='eddCreation'),
    path('addIndividual/',views.addIndividual,name='addIndividual'),
    path('addOrganization/',views.addOrganization,name='addOrganization'),
    path('reporting/',views.reporting,name='reportingModule'),
    
    ]