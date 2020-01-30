Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  get 'show/:id', to: 'tasks#show', as: 'show'
  get 'new', to: 'tasks#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
