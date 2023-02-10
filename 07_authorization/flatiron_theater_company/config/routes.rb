Rails.application.routes.draw do
  resources :tickets, only: [:create]
  resources :users, only: [:show, :create]
  # resources :cast_members
  resources :productions, only: [ :index, :show, :create, :update, :destroy]
  # Custome Route
  # Add auth routes here
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get '/authorized_user', to: 'users#show'
  

end
