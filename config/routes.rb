Rails.application.routes.draw do
  resources :locations, only: [:create]
  resources :segments, only: [:create]
  resources :trips, only: [:create, :show, :update]
  resources :maintenance_reports, only: [:create]
  resources :vehicles, only: [:create, :destroy, :update]
  resources :emergency_contacts, only: [:create, :update]
  resources :users, only: [:create, :show, :update]
  resources :sessions, only: [:create]
  get '/routes/:origin/:destination', to: 'trips#fetch'
  get '/weather/:city', to: 'weather#show'
  get'/starttrip/:trip', to: 'mailer#start_trip'
  get'/endtrip/:trip', to: 'mailer#end_trip'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
