#Create the models
rails generate model Charity name:string adress:string phone:string description:text
rails generate model Product name:string expiration:datetime 
rails generate model Offer amount:integer name:string
rails generate model Reservation amount:integer description:text limit_date:datetime  date_reservation: datetime
rails generate model Provider name:string description:text born_date:datetime
rails generate model Donation description:text state:string date:datetime
rails generate model Person cedula:string name:string born_date:datetime nationality:string
rails generate model Consumer cedula:string

#Create the relations
rails generate migration add_product_id_to_offers product:references
rails generate migration add_provider_id_to_offers provider:references
rails generate migration add_provider_id_to_reservations provider:references
rails generate migration add_consumer_id_to_reservations consumer:references
rails generate migration add_provider_id_to_donations provider:references


