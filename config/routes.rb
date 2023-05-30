Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks", to: "tasks#index", as: :tasks
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  root to: "tasks#index"
  patch "tasks/:id", to: "tasks#update", as: :update
  delete "tasks/:id", to: "tasks#destroy"
end
