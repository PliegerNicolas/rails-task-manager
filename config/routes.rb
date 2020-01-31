Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  delete 'tasks/:id', to: 'tasks#delete', as: 'delete'
  get 'show/edit/:id', to: 'tasks#update', as: 'update'
  patch 'tasks', to: 'tasks#update_action', as: 'update_action'
  get 'show/:id', to: 'tasks#show', as: 'show'
  get 'new', to: 'tasks#new'
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
