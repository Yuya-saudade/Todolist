Rails.application.routes.draw do
  get "tasks/index" => "tasks#index"
  post "tasks/create" => "tasks#create"

  post "tasks/:id/edit" => "tasks#edit"
  post "tasks/:id/completed" => "tasks#completed"

  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
