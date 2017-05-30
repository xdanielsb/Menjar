Rails.application.routes.draw do
  resources :people
  resources :donations
  resources :reservations
  resources :offers
  resources :products
  resources :charities
  resources :consumers
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
