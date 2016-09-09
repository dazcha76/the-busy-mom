Rails.application.routes.draw do
  get '/' => 'home#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get '/login/' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/activities' => 'activities#index'

  get '/budget' => 'budgets#index'

  get '/calendar' => 'calendars#index'

  get '/chores' => 'chores#index'

  get '/meals' => 'meals#index'
  get '/meals/new' => 'meals#new'
  post '/meals' => 'meals#create'
  get '/meals/:id' => 'meals#show'

  get '/recipes' => 'recipes#index'
  get '/recipes/new' => 'recipes#new'
  post '/recipes' => 'recipes#create'
  get '/recipes/:id' => 'recipes#show'
  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'
  delete '/recipes/:id' => 'recipes#destroy'
end
