Rails.application.routes.draw do
  get 'todos/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
#     root "pages#index"

    get "/projects", to: "projects#index"
    get "/projects-labels", to: "projects#projects_labels"
    post "/todos", to: "projects#create_todo"
    patch "/projects/:projectId/todo/:todoId", to: "projects#update_todo"
end
