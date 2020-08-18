Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # create a task
  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create" 

  # see all the tasks
  get "tasks", to: "tasks#index"
  # see one task
  get "tasks/:id", to: "tasks#show", as: "task"
  
  #update a specific task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  #destroy a specific task
  delete "tasks/:id", to: "tasks#destroy"
end
