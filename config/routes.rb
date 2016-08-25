Rails.application.routes.draw do
  get '/' => 'home#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get '/login/' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  get '/recipes' => 'recipes#create'
  get '/recipes/:id' => 'recipes#show'

  get '/meals' => 'meals#index'
  get '/meals/new' => 'meals#new'
  post '/meals' => 'meals#create'
  get '/meals/:id' => 'meals#show'
end
