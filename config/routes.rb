Rails.application.routes.draw do
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :shift_users
  resources :events
  devise_for :users
    get "users" => "user#index"
    get "users/show" => "user#show"
    get "users/:id/edit" => "user#edit"
    post "users/:id/update" =>"user#edit"

  root 'home#top'

end
