Rails.application.routes.draw do

  resources :shift_users
  resources :events
  devise_for :users
    get "users" => "user#index"
    get "users/show" => "user#show"
    post "users/:id/update" =>"user#show"

  root 'home#top'

end
