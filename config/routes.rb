Rails.application.routes.draw do
  get '/' => 'home#index'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get 'meals' => 'meals#index'
  get 'meals/:id' => 'meals#show'
end
