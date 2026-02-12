Rails.application.routes.draw do
  devise_for :users
  resources :task2s
  get 'news/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  root "time#index"

  get "/news/:id" => "news#show"

  get "about" => "time#about",  :as => :about
  get "/news" => "news#index", :as => :news
  get "/tasks" => "tasks#index", :as => :tasks
end
