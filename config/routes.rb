Rails.application.routes.draw do
  get 'meals' => 'meals#index'
  get 'meals/:id' => 'meals#show'
end
