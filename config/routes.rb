Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Defines the root path route ("/")
  # root "posts#index"
  # add a new task
  get "/tasks", to: "tasks#index"
  # click on a task and go to a specific page of a task
  get "/tasks/:id", to: "tasks#show", as: :task
end
