Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root :to => 'pages#index' # Home page
  
  resources :trainers # This creates all CRUD opertation routes for each resources 
  resources :users 
  resources :bookings
  
  

  # Defines the root path route ("/")
  # root "posts#index"
end
