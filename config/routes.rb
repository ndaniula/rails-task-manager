Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get 'tasks/new', to: 'tasks#new', as: :task_new
post 'tasks', to: 'tasks#create'

#read

get 'tasks', to:'tasks#index'
get 'tasks/:id', to: 'tasks#show', as: :task



# update

get 'tasks/:id/edit', to: 'tasks#show'
patch 'tasks/:id', to: 'tasks#update'

#delete

delete 'tasks/:id', to: 'tasks#destroy'

get 'tasks/:id', to: 'tasks#find'

end
