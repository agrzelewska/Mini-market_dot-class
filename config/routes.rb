Rails.application.routes.draw do
  root 'dashboards#show'

  get 'signup' => 'customers#new'
  resources :customers

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
  
  resources :products
 
  resources :offers
  post 'offers/new' => 'offers#create'
 end
