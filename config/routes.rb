Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#  get 'tasks', to: 'tasks#index'
#  post 'tasks', to: 'tasks#create'
#  delete 'tasks/:id', to: 'tasks#delete', as: 'delete'
#  get 'show/edit/:id', to: 'tasks#edit', as: 'edit'
#  patch 'tasks', to: 'tasks#update', as: 'update'
#  get 'show/:id', to: 'tasks#show', as: 'show'
#  get 'new', to: 'tasks#new'
#  root 'tasks#index'
