Rails.application.routes.draw do

  resources :autos
  resources :categories
  resources :service_calendars
  resources :user_calendars
  resources :service_quotes
  resources :service_requests
  resources :service_centers
  resources :users, only: :create do
    collection do
    post 'confirm'
    end
  end

  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'
  post 'authenticate', to: 'authentication#authenticate'


  # get    '/categories/list'     => 'categories#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
