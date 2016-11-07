Rails.application.routes.draw do
  resources :autos
  resources :categories
  resources :service_calendars
  resources :user_calendars
  resources :service_quotes
  resources :service_requests
  resources :service_centers
  resources :users

  get  'service_requests_profile', to: 'service_requests#userid'
  # get 'profile', to: :show, controller: 'users'
  post 'authenticate', to: 'authentication#authenticate'
  # get    '/categories/list'     => 'categories#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
