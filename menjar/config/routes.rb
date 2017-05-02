Rails.application.routes.draw do
  resources :donations
  resources :providers
  resources :products
  resources :charities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
