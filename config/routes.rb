Rails.application.routes.draw do





  get '/', to: 'users#index', as: 'users'


  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/posts/:id', to: 'posts#show', as: 'post'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'

  post "/cities/:id/posts/new", to: "posts#create"

  resources :cities do
      resources :posts
  end

  resources :users do
    resources :posts
  end

end
