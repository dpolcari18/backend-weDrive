Rails.application.routes.draw do
  resources :locations, only: [:create]
  resources :segments, only: [:create]
  resources :trips, only: [:create, :show, :update]
  # resources :maintenance_reports
  # resources :vehicles
  # resources :emergency_contacts
  resources :users, only: [:create, :show]
  resources :sessions, only: [:create]
  get '/routes/:origin/:destination', to: 'trips#fetch'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
