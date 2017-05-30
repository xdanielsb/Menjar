#!/bin/bash
#This script create the application 
rails new menjar 
cd menjar/

#Execute scaffold
rails generate scaffold Provider name description:text born_date:datetime
rails generate scaffold Consumer cedula
rails generate scaffold Charity name adress phone description:text 
rails generate scaffold Product name expiration:datetime 
rails generate scaffold Offer amount:integer name product_id:references provider_id:references 
rails generate scaffold Reservation amount:integer description:text limit_date:datetime  date_reservation: datetime provider_id:references consumer_id:references
rails generate scaffold Donation description:text state date:datetime
rails generate scaffold Person cedula name born_date:datetime nationality provider_id:references 

#Set relations
rails db:create
rails db:migrate


