Rails.application.routes.draw do
  # Read All Tasks
  # action location, to: controller#acton, as: prefix
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # Create
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # Read One
  # The "show" action refers to the single target from the full index
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Update
  
  # Delete

end
