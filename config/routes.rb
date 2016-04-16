Rails.application.routes.draw do
  # get 'password_resets/new'
  #
  # root to: 'articles#index'
  #
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'
  #
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "articles#index"
  resources :users
  resources :sessions
  resources :articles
  resources :password_resets
end
