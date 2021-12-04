from datetime import datetime

from django.http import HttpRequest
from django.http.response import JsonResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse

from django.db import connection 
from datetime import datetime
from django.contrib import messages
import requests
import json



from identification.models import Beneficial, Individual,PEP, Organization,CustomerType, DeliveryChannel, ProductType, GeographicLocation




#def individualIdentification(request):
#    return render(request,"identification/individual_ip.html")

def organizationIdentification(request):
    return render(request,"identification/organization_ip.html")

#def eddIdentification(request):
#    return render(request,"identification/edd.html")

def pepIdentification(request):
    return render(request,"identification/pep_form.html")


def reporting(request):
    individualData = Individual.objects.all()
    return render(request,"reporting/report_module.html",{'individualData': individualData})
     

     

def addIndividual(request): 
    context = {}
    if request.method == 'POST':
        print("im  in post block")
        account_date= request.POST.get('accountdate')
           
        #cifnumber = request.POST.get('cif_number')
        cnic = request.POST.get('user_cnic')
        ex_date = request.POST.get('ex_date')
        gender = request.POST.get('gender')
        accounttitle = request.POST.get('account_tite')
        accountnumber = request.POST.get('account_number')
        branch_name = request.POST.get('branch_name')
        branch_code = request.POST.get('branch_code')
        customer_name = request.POST.get('customer_name')
        father_name = request.POST.get('father_name')
        birthday = request.POST.get('birthday')
        birth_city = request.POST.get('birth_city')
        birth_country = request.POST.get('birth_country')
        residence_status = request.POST.get('residence_status')
        current_address = request.POST.get('current_address')
        permanent_address = request.POST.get('permanent_address')
        district = request.POST.get('district')
        province = request.POST.get('province')
        geo_location = request.POST.get('city')
        zip_code = request.POST.get('zip_code')
        customertype = request.POST.getlist('customer_type')
        product_type = request.POST.getlist('product_type')
        delivery_channel = request.POST.getlist('delivery_channel')
        account_purpose = request.POST.getlist('account_purpose')
        transaction_mode= request.POST.getlist('transaction_mode')
        wealth_source= request.POST.getlist('wealth_source')
        number_debit_transaction = request.POST.get('number_debit_transaction')
        amount_debit_transaction = request.POST.get('amount_debit_transaction')
        number_credit_transaction = request.POST.get('number_credit_transaction')
        amount_credit_transaction = request.POST.get('amount_credit_transaction')
        benefical_owner = request.POST.get('benefical_owner')
        pep_status= request.POST.get('pep_status')

        print(cnic, ex_date, gender, accounttitle, accountnumber, branch_name, branch_code, customer_name)
        print(account_purpose[0])

        url = "https://stifle.live/api/scoring/kyc"
        payload = json.dumps({
        "name": customer_name,
        "father_name": father_name,
        "passport_num": "",
        "id_number": cnic,
        "gender": gender,
        "dob": birthday,
        "pob": "test",
        "individual_account_purpose": account_purpose[0],
        "delivery_channel": delivery_channel[0],
        "product_type": product_type[0],
        "customer_type": customertype[0],
        "geographic_location": geo_location,
        "country": birth_country,
        "nationality": birth_country,
        "district": district,
        "province": province,
        "address": current_address
        })
        headers = {
        'Content-Type': 'application/json'
        }
        # print(payload)
        response = requests.request("POST", url, headers=headers, data=payload)

        response = response.text
        response = json.loads(response)
        print(response)
        response = response['cust_risk_category']
        print(response)
        cust_risk_val = ''
        if response == "High":
            diligence_type="SDD"
            cust_risk_cat = 'High'
        elif response == "Medium":
            diligence_type="SDD"
            cust_risk_cat = 'Medium'
        elif response == "Low":
            diligence_type="SDD"
            cust_risk_cat = 'Low'
            
        data_obj = Individual.objects.create(
            account_date=account_date,
            customer_id=cnic,
            document_expiry_date=ex_date,
            gender=gender,
            account_title=accounttitle,
            account_number=accountnumber,
            branch_name=branch_name,
            branch_code=branch_code,
            customer_name=customer_name,
            father_name=father_name,
            birth_date= birthday,
            birth_place= birth_city,
            nationality=birth_country,
            residence_status=residence_status,
            current_address= current_address,
            permanent_addres=permanent_address,
            district=district,province=province,
            city=geo_location,
            zipcode= zip_code,
            customer_type=customertype,
            product_type=product_type,
            delivery_channel=delivery_channel,
            account_purpose=account_purpose,
            mode_of_transactions= transaction_mode,
            fund_source=wealth_source,
            number_debit_transaction=  number_debit_transaction,
            amount_debit_transaction=amount_debit_transaction,
            number_credit_transaction=number_credit_transaction,
            amount_credit_transaction= amount_credit_transaction,
            risk_category=cust_risk_cat,
            risk_score=75,
            diligence_type=diligence_type,
            beneficial_ownership=benefical_owner  
        )
        
        id = data_obj.customer_id
        print(id)
        
        return JsonResponse({'id':id})

    else:
           
        context['DeliveryChannel'] = DeliveryChannel.objects.all()
        context['ProductType'] = ProductType.objects.all()
        context['GeographicLocation'] = GeographicLocation.objects.all() 
        context['CustomerType'] = CustomerType.objects.all()    
        messages.success(request, 'Your data has been saved successfully!')
        return render(request,'identification/individual_ip.html',context)

    

    


def addOrganization(request): 
    context = {}
    if request.method == 'POST':
        print("im in organization post")
        account_date= request.POST.get('accountdate')
        #cifnumber = request.POST.get('cif_number')
        incorporation_number = request.POST.get('incorporation_no')
        corporation_name = request.POST.get('corporation_name')

        corporation_date = request.POST.get('corporation_date')
        corporation_type = request.POST.getlist('corporation_type')
        accounttitle = request.POST.get('account_tite')
        accountnumber = request.POST.get('account_number')
        branch_name = request.POST.get('branch_name')
        branch_code = request.POST.get('branch_code')
        address = request.POST.get('address')
        district = request.POST.get('district')
        province = request.POST.get('province')
        city = request.POST.get('city')
        zip_code = request.POST.get('zip_code')
        
        partner_name = request.POST.get('partner_name')
        partner_id = request.POST.get('partner_id')
        customer_type = request.POST.getlist('customer_type')
        product_type = request.POST.getlist('product_type')
        delivery_channel = request.POST.getlist('delivery_channel')
        pep_status = request.POST.get('pep_status')
        pep_nature= request.POST.get('pep_nature')
        account_purpose = request.POST.getlist('account_purpose')
        transaction_mode= request.POST.getlist('transaction_mode')
        fund_source= request.POST.getlist('fund_source')

        customertype1 = customer_type
        str1 = ''.join(customertype1)
        print("before pep block")
        pep_data=None
        if pep_status=="yes":
            print("im  in PEP block")
            high_rank_official= request.POST.get('high_rank_official')
            high_rank_official_type= request.POST.getlist('high_rank_official_type')
            legislative_assembly= request.POST.get('legislative_assembly')
            legislative_assembly_type= request.POST.getlist('legislative_assembly_type')       
            judicial_official= request.POST.get('judicial_official')
            judicial_official_type= request.POST.getlist('judicial_official_type')      
            public_function= request.POST.get('public_function')
            public_function_type= request.POST.getlist('public_function_type')       
            diplomat= request.POST.get('diplomat')
            diplomat_type= request.POST.getlist('diplomat_type')       
            military_official= request.POST.get('military_official')
            military_official_type= request.POST.getlist('military_official_type')       
            senior_position_status= request.POST.get('senior_position_status')
            senior_position_status_type= request.POST.getlist('senior_position_status_type')             
            high_risk_ranking_official= request.POST.get('high_risk_ranking_official')
            high_risk_ranking_official_type= request.POST.getlist('high_risk_ranking_official_type')
            member_of_ruling_families= request.POST.get('member_of_ruling_families')
            member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position')        
            immediate_family_member= request.POST.get('immediate_family_member')
            immediate_family_member_section_no= request.POST.get('immediate_family_member_section_no')
            immediate_family_member_name= request.POST.get('immediate_family_member_name')
            immediate_family_member_relation= request.POST.get('immediate_family_member_relation')
            pep_wealth_source = request.POST.get('pep_wealth_source')
            pep_share_holdig = request.POST.get('pep_share_holdig')
            pep_country = request.POST.get('pep_country')
            
            
            pep_data=PEP(high_rank_official =  high_rank_official,high_rank_official_type = high_rank_official_type,
    
                        legislative_assembly=  legislative_assembly,
                        legislative_assembly_type = legislative_assembly_type,
                        judicial_official =  judicial_official,
                        judicial_official_type = judicial_official_type,   
                        public_function = public_function,
                        public_function_type =public_function_type ,
                        diplomat =  diplomat,
                        diplomat_type = diplomat_type,
                        military_official = military_official,
                        military_official_type = military_official_type,
                        senior_position_status = senior_position_status,
                        senior_position_status_type =   senior_position_status_type, 
                        high_risk_ranking_official = high_risk_ranking_official,     
                        high_risk_ranking_official_type =high_risk_ranking_official_type ,
                        member_of_ruling_families = member_of_ruling_families,   
                        member_of_ruling_familiesl_position =  member_of_ruling_familiesl_position,
                        immediate_family_member =     immediate_family_member,
                        immediate_family_member_section_no = immediate_family_member_section_no,  
                        immediate_family_member_name =  immediate_family_member_name ,
                        immediate_family_member_relation = immediate_family_member_relation,  
                        pep_wealth_source = pep_wealth_source,   
                        pep_share_holdig = pep_share_holdig,
                        pep_country =pep_country,
                
                         )
            pep_data.save()
        
        data=Organization(
            account_date=account_date,
            incorporation_number=incorporation_number,
            corporation_name=corporation_name ,
            corporation_date=corporation_date,
            corporation_type=corporation_type,            
            account_title=accounttitle,account_number=accountnumber, branch_name=branch_name,   branch_code=branch_code,     
            address= address,
            district=district,province=province,
            city=city, zipcode= zip_code, 
            partner_name=partner_name,
            partner_id=partner_id,
            customer_type=customer_type,product_type=product_type,
            delivery_channel=delivery_channel,
            pep_status=pep_status,
            pep_nature=pep_nature,
            account_purpose=account_purpose,mode_of_transactions= transaction_mode,
            fund_source=fund_source,
                       
            )
        print("before saving data")
        print(data)
        data.save()
        
        return HttpResponse("data has been saved")


    else:
           
        context['DeliveryChannel'] = DeliveryChannel.objects.all()
        context['ProductType'] = ProductType.objects.all()
        context['GeographicLocation'] = GeographicLocation.objects.all() 
        context['CustomerType'] = CustomerType.objects.all()            
        return render(request,'identification/organization_ip.html',context)
    



def addPEP(request): 
    if request.method == 'POST':
        
        high_rank_official= request.POST.get('high_rank_official')
        high_rank_official_type= request.POST.getlist('high_rank_official_type')

        legislative_assembly= request.POST.get('legislative_assembly')
        legislative_assembly_type= request.POST.getlist('legislative_assembly_type')

        
        judicial_official= request.POST.get('judicial_official')
        judicial_official_type= request.POST.getlist('judicial_official_type')

        
        public_function= request.POST.get('public_function')
        public_function_type= request.POST.getlist('public_function_type')

        
        diplomat= request.POST.get('diplomat')
        diplomat_type= request.POST.getlist('diplomat_type')

       
        military_official= request.POST.get('military_official')
        military_official_type= request.POST.getlist('military_official_type')
        

        senior_position_status= request.POST.get('senior_position_status')
        senior_position_status_type= request.POST.getlist('senior_position_status_type')
        
       
        high_risk_ranking_official= request.POST.get('high_risk_ranking_official')
        high_risk_ranking_official_type= request.POST.getlist('high_risk_ranking_official_type')
        

        member_of_ruling_families= request.POST.get('member_of_ruling_families')
        member_of_ruling_familiesl_position= request.POST.get('member_of_ruling_familiesl_position')

        
        immediate_family_member= request.POST.get('immediate_family_member')
        immediate_family_member_section_no= request.POST.get('immediate_family_member_section_no')
        immediate_family_member_name= request.POST.get('immediate_family_member_name')
        immediate_family_member_relation= request.POST.get('immediate_family_member_relation')
        
        pep_wealth_source = request.POST.get('pep_wealth_source')
        pep_share_holdig = request.POST.get('pep_share_holdig')
        pep_country = request.POST.get('pep_country')
       
       
 
        return HttpResponse("data has been saved")
    return render(request, "identification/pep_form.html")