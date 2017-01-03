Rails.application.routes.draw do


get '/', to: 'users#index', as: 'users'


get '/signup', to: 'users#new'
post '/users', to: 'users#create'

get '/users/id', to: 'users#show'


get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get  '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
