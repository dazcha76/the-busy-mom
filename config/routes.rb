Rails.application.routes.draw do
  get 'home/index'

  get '/' => 'home#index'

  get 'meals' => 'meals#index'
  get 'meals/:id' => 'meals#show'
end
