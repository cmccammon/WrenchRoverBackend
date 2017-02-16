Rails.application.routes.draw do

  resources :autos
  resources :categories
  resources :service_calendars
  resources :user_calendars
  resources :service_quotes
  resources :service_requests
  resources :service_centers
  resources :users
  

  post 'passwords/forgot', to: 'passwords#forgot'
  post 'passwords/reset', to: 'passwords#reset'
  #post 'passwords/update', to: 'passwords#update'
  post 'authenticate', to: 'authentication#authenticate'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
