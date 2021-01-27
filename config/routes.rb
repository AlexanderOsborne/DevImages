Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Root
  root 'sessions#new'
  #Images
  resources :images

  root 'sessions#new'
  
  #Users
  get '/signup', to: 'users#new', as: 'new_user'
  post 'users', to: 'users#create'
  get 'Dashboard', to: 'users#show', as: 'user_dashboard'
  
  #Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #Search
  get '/search', to: 'search#create', as: 'search'
end
