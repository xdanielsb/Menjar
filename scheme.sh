#!/bin/bash
#This script create the application 
rails new menjar 
cd menjar/

#Execute scaffold
rails generate scaffold Provider name:string description:text born_date:datetime
rails generate scaffold Consumer cedula:string
rails generate scaffold Charity name:string adress:string phone:string description:text 
rails generate scaffold Product name:string expiration:datetime 
rails generate scaffold Offer amount:integer name:string product_id:references provider_id:references 
rails generate scaffold Reservation amount:integer description:text limit_date:datetime  date_reservation: datetime provider_id:references consumer_id:references
rails generate scaffold Donation description:text state:string date:datetime
rails generate scaffold Person cedula:string name:string born_date:datetime nationality:string provider_id:references 

#Set relations
rails db:create
rails db:migrate

