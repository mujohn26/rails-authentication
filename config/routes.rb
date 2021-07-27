Rails.application.routes.draw do
  resources :users
  root to: 'users#new'
  get '/signup', to: 'users#new'
  post '/users/new', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
