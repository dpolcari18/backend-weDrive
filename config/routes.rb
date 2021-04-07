Rails.application.routes.draw do
  resources :maintenance_reports
  resources :vehicles
  resources :emergency_contacts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
