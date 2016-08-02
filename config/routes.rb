Rails.application.routes.draw do
  resources :service_quotes
  resources :service_requests
  resources :service_centers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
