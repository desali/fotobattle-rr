Rails.application.routes.draw do
  resources :users

  get '/about', to: "static_pages#about"
  get '/signup', to: "users#new"

  root "static_pages#home"
end
