Rails.application.routes.draw do
  post "users/:id/update" => "users#update"

  post "users/signup" => "users#signup"
  post "logout" => "users#logout"
  post "login" => "users#login"

  post "tasks/:id/completed" => "tasks#completed"
  get "tasks/index" => "tasks#index"
  post "tasks/create" => "tasks#create"
  post "tasks/:id/edit" => "tasks#edit"

  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
