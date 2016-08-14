Rails.application.routes.draw do
  get '/' => 'home#index'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'meals' => 'meals#index'
  get 'meals/:id' => 'meals#show'
end
