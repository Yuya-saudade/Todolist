Rails.application.routes.draw do
  post "tasks/:id/completed" => "tasks#completed"
  get "tasks/:name/index" => "tasks#index"
  post "tasks/create" => "tasks#create"
  post "tasks/:id/edit" => "tasks#edit"

  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
