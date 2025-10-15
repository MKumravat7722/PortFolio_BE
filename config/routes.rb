Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :homes, only: [:index]
      resources :abouts, only: [:index]
      resources :services, only: [:index]
      resources :projects, only: [:index]
      resources :skills, only: [:index]
      resources :educations, only: [:index]
      resources :contact_messages, only: [:create]
    end
  end  
end
