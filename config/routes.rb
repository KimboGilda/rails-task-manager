Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Defines the root path route ("/")
  # root "posts#index"
  # add a new task
  get "/tasks", to: "tasks#index"
  
  # create a task
  # 1. create a form to add the new task
  get "/tasks/new", to: "tasks#new"
  # 2. POST the parameters to create a new task
  post "/tasks", to: "tasks#create"
  # click on a task and go to a specific page of a task
  get "/tasks/:id", to: "tasks#show", as: :task

  # edit a task
  # 1. get the specific task we want to edit
  get "/tasks/:id/edit", to: "tasks#edit", as: :task_edit

  # 2. update the task and send it to the server
  patch "tasks/:id", to: "tasks#update"

  # delete a task
  delete "tasks/:id", to: "tasks#destroy", as: :task_delete


end
