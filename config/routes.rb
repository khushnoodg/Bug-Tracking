Rails.application.routes.draw do
  resources :bugzs
  resources :proj_users
  resources :projects
  get 'khushi/index'
  get 'manager/index'
  get 'ali/index'
  get 'wow/index'
  get 'project/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
# config/routes.rb
root to: 'wow#index'

  # Defines the root path route ("/")
  # root "posts#index"
end
