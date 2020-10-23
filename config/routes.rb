Rails.application.routes.draw do
  root 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/signup', to: 'users#new'
  resources :users
  resources :articles do
    resources :votes
  end
  resources :sections
end
