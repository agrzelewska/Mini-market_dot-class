Rails.application.routes.draw do
   
  resources :products

  get 'signup' => 'customers#new'
  resources :customers

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
end
