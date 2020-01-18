Rails.application.routes.draw do

  resources :shift_users
  resources :events
  devise_for :users
    get "users" => "user#index"
    get "users/:id" => "user#show"
    post "users/:id/update" =>"user#edit"

  root 'home#top'

end
