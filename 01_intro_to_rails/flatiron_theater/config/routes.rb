Rails.application.routes.draw do
  resources :productions
  get '/productions', to:'productions#index'
  get '/welcome', to: 'application#welcome'
  get '/welcome/:name', to: 'application#name'
end
