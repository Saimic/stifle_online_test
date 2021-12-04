from django.db import migrations,models
from datetime import date
import datetime

 



class CustomerType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    cust_type = models.CharField(db_column='Cust_Type', max_length=500)  # Field name made lowercase.
    risk_category = models.CharField(db_column='Risk_Category', max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(db_column='Risk_Weight', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'customer_type'

class DeliveryChannel(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    channel = models.CharField(max_length=500)
    risk_category = models.CharField(db_column='Risk_Category', max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(db_column='Risk_Weight', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'delivery_channel'

class GeographicLocation(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=500)  # Field name made lowercase.
    risk_category = models.CharField(db_column='Risk_Category', max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(db_column='Risk_Weight', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'geographic_location'

class ProductType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    prod_type = models.CharField(db_column='Prod_Type', max_length=500)  # Field name made lowercase.
    risk_category = models.CharField(db_column='Risk_Category', max_length=20, blank=True, null=True)  # Field name made lowercase.
    risk_weight = models.IntegerField(db_column='Risk_Weight', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'product_type'


class Beneficial(models.Model):
         benefical_owner_name= models.CharField(max_length=50)
         relationship_with_customer= models.CharField(max_length=50)
         beneficial_address= models.CharField(max_length=200)
         beneficial_id= models.CharField(max_length=200)
         beneficial_document_no= models.CharField(max_length=200)
         beneficial_id_expiray=models.CharField(max_length=50,blank=True, default='', null=True)
         beneficial_nationality= models.CharField(max_length=100)
         beneficial_residence= models.CharField(max_length=100)
         is_us_persone= models.CharField(max_length=50)
         beneficial_fund_source= models.CharField(max_length=200) 



class Individual(models.Model):
    account_date=models.CharField(max_length=50,blank=True, default='', null=True)
    #cif_number = models.CharField(max_length = 20,default ="ST0000", editable=False)
    customer_id = models.CharField(primary_key=True,max_length=20)
    document_expiry_date=models.CharField(max_length=50,blank=True, default='', null=True)
    gender = models.CharField(max_length=50, default='', null=True)
    account_title = models.CharField(max_length=100, default='', null=True)
    account_number = models.CharField(max_length=50, default='', null=True)
    branch_name = models.CharField(max_length=50, default='', null=True)
    branch_code = models.CharField(max_length=50, default='', null=True)
    customer_name = models.CharField(max_length=50, default='', null=True)
    father_name = models.CharField(max_length=50, default='', null=True)
    birth_date=models.CharField(max_length=50,blank=True, default='', null=True)
    birth_place = models.CharField(max_length=100, default='', null=True) 
    nationality= models.CharField(max_length=50, default='', null=True)
    residence_status = models.CharField(max_length=100, default='', null=True)
    current_address = models.CharField(max_length=100, default='', null=True)
    permanent_addres= models.CharField(max_length=100, default='', null=True)
    district = models.CharField(max_length=100, default='', null=True)
    province = models.CharField(max_length=100, default='', null=True)
    city = models.CharField(max_length=100, default='', null=True)
    zipcode= models.CharField(max_length=100, default='', null=True)
    customer_type = models.CharField(max_length=300, default='', null=True)
    product_type = models.CharField(max_length=300)
    delivery_channel = models.CharField(max_length=300, default='', null=True)
    account_purpose = models.CharField(max_length=300, default='', null=True)
    mode_of_transactions = models.CharField(max_length=300, default='', null=True)
    fund_source = models.CharField(max_length=50, default='', null=True)
    number_debit_transaction = models.CharField(max_length=100, default='', null=True)
    amount_debit_transaction = models.CharField(max_length=100, default='', null=True)
    number_credit_transaction= models.CharField(max_length=100, default='', null=True)
    amount_credit_transaction= models.CharField(max_length=100, default='', null=True)
    risk_category= models.CharField(max_length=50, default='', null=True)
    risk_score= models.IntegerField( default=0, null=True)
    diligence_type= models.CharField(max_length=50, default='', null=True)

    beneficial_ownership= models.CharField(max_length=50, default='', null=True)

    #beneficial_details = models.ForeignKey(Beneficial, on_delete=models.CASCADE)
   
 
 

class Organization(models.Model):
    account_date=models.DateField()
    cif_number = models.AutoField(primary_key=True)
    incorporation_number = models.CharField(max_length=50, default='', null=True)
    corporation_name = models.CharField(max_length=50, default='', null=True)
    corporation_date=models.DateField()
    corporation_type= models.CharField(max_length=100, default='', null=True)
    
    account_title = models.CharField(max_length=100, default='', null=True)
    account_number = models.CharField(max_length=50)
    branch_name = models.CharField(max_length=50)
    branch_code = models.CharField(max_length=50)
    address = models.CharField(max_length=50) 
    district = models.CharField(max_length=100)
    province = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    zipcode= models.CharField(max_length=100)
    partner_name= models.CharField(max_length=300) 
    partner_id= models.CharField(max_length=300)
    customer_type = models.CharField(max_length=300)
    product_type = models.CharField(max_length=300)
    delivery_channel = models.CharField(max_length=300)
   
    pep_status= models.CharField(max_length=300)
    pep_nature= models.CharField(max_length=300)

    account_purpose = models.CharField(max_length=300)
    mode_of_transactions = models.CharField(max_length=300)
    fund_source = models.CharField(max_length=50)
    
    

         
   
 


class PEP(models.Model):
   
   
    high_rank_official = models.CharField(max_length=50)

    high_rank_official_type = models.CharField(max_length=50, default='', null=True)
    
    legislative_assembly= models.CharField(max_length=100)
    
    legislative_assembly_type = models.CharField(max_length=50, default='', null=True)
    
    judicial_official = models.CharField(max_length=100)
    judicial_official_type = models.CharField(max_length=50, default='', null=True)
    
    public_function = models.CharField(max_length=50)

    public_function_type = models.CharField(max_length=50, default='', null=True)
    diplomat = models.CharField(max_length=50) 

    diplomat_type = models.CharField(max_length=100, default='', null=True)
    military_official = models.CharField(max_length=50)

    military_official_type = models.CharField(max_length=50, default='', null=True)

    senior_position_status = models.CharField(max_length=50)

    senior_position_status_type = models.CharField(max_length=50, default='', null=True)
    high_risk_ranking_official = models.CharField(max_length=50)
    high_risk_ranking_official_type = models.CharField(max_length=50, default='', null=True)

    member_of_ruling_families = models.CharField(max_length=50)
    member_of_ruling_familiesl_position = models.CharField(max_length=50, default='', null=True)
    immediate_family_member = models.CharField(max_length=50)
    immediate_family_member_section_no = models.CharField(max_length=50, default='', null=True)

    immediate_family_member_name = models.CharField(max_length=50)
    immediate_family_member_relation = models.CharField(max_length=50, default='', null=True)
    pep_wealth_source = models.CharField(max_length=50)
    pep_share_holdig = models.CharField(max_length=50)
    pep_country = models.CharField(max_length=50)
    
    

   
 

