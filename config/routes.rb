Rails.application.routes.draw do
  resources :locations
  resources :segments
  resources :trips
  resources :maintenance_reports
  resources :vehicles
  resources :emergency_contacts
  resources :users
  resources :sessions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
