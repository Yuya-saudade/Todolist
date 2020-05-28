Rails.application.routes.draw do
  post "logout" => "users#logout"
  post "login" => "users#login"
  get "users/:name/edit" => "user#edit"
  post "users/signup" => "users#signup"
  post "tasks/:id/completed" => "tasks#completed"
  get "tasks/index" => "tasks#index"
  post "tasks/create" => "tasks#create"
  post "tasks/:id/edit" => "tasks#edit"

  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
