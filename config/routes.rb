Rails.application.routes.draw do
  # resources :items, only: [:index], format: 'json'
  # root "items#index"

  get "items" => "items#index"
end
