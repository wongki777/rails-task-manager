Rails.application.routes.draw do
# You can generate the 7 routes with just one line, don’t write them all!
  resources :tasks
end


#   # Read all
#   get    "tasks",          to: "tasks#index"
#   # Create
#   get    "tasks/new",      to: "tasks#new",  as: :new_task
#   post   "tasks",          to: "tasks#create"
#   # Read one - The `show` route needs to be *after* `new` route.
#   get    "tasks/:id",      to: "tasks#show", as: :task
#   # Update
#   get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
#   patch  "tasks/:id",      to: "tasks#update"
#   # Delete
#   delete "tasks/:id",      to: "tasks#destroy"
